#define GetSystemClock()            32000000UL
#define GetPeripheralClock()        (GetSystemClock())
#define GetInstructionClock()       (GetSystemClock() / 2)
#define TRY do{ jmp_buf ex_buf__; if( !setjmp(ex_buf__) ){
#define CATCH } else {
#define ETRY } }while(0)
#define THROW longjmp(ex_buf__, 1)

#include "thermostat.h"
#include "timer.h"
#include "adc.h"
#include "features.h"
#include <setjmp.h>


int tempC_Tenths=60;

//init to 141 steps, 455mv, 15.56C, 60F
int steps = 141;
int iteration = 0;
int h1Pin=5;
//int h2Pin=13;
int c1Pin=7;
//int c2Pin=8;
//int c3Pin=9;
int tempPin=43;
int tempOverride=0;
int armed=0;


void overTemp()
{
    TRY
    {
        SetPinDigitalOut_Override(h1Pin, 0, 0);
        //SetPinDigitalOut_Override(h2Pin, 0, 0);
        SetPinDigitalOut_Override(c1Pin, 1, 0);
    } ETRY;
}

void underTemp()
{
    TRY {
        SetPinDigitalOut_Override(c1Pin, 0, 0);
        //SetPinDigitalOut_Override(c2Pin, 0, 0);
        //SetPinDigitalOut_Override(c3Pin, 0, 0);
        SetPinDigitalOut_Override(h1Pin, 1, 0);
    } ETRY;
}

void allOff()
{
    TRY {
        SetPinDigitalOut_Override(h1Pin, 0, 0);
        //SetPinDigitalOut_Override(h2Pin, 0, 0);
        SetPinDigitalOut_Override(c1Pin, 0, 0);
        //SetPinDigitalOut_Override(c2Pin, 0, 0);
        //SetPinDigitalOut_Override(c3Pin, 0, 0);
    } ETRY;
}



int processRequest(int pin)
{
    TRY {
        //return 1;
        if (pin==0 || pin==tempPin) return 1;
        if (tempOverride==0) return 1; else return 0;
    } ETRY;
    return 0;
}


// Counts is 0 to 1023 indicating a step between 0v and 3.3v, 3.223mv per step.
void setTemperature()
{
    TRY {
        steps = ReportChannelStatus(0);
    } ETRY;
}

void initThermostat()
{
    TRY {
    //    ADCSetScan(tempPin,1);
        SetPinAnalogIn(tempPin);
    } ETRY;
}

void blink(int count)
{
    DelayMs(500);
    int i;
    for (i=0;i<count;i++)
    {
        SetPinDigitalOut_Override(0, 1, 0);
        DelayMs(200);
        SetPinDigitalOut_Override(0, 0, 0);
        DelayMs(200);
    }

}


//If temperature drops below 45 turn on the heater and leave it on until 55
//If temperature climbs above 95 turn off the heater and on the AC until 85.
void safetyOverrideCheck()
{
    TRY {
        iteration++;
        if (iteration>100)
        {
            //Only check every 100 loops to avoid unnecessary processing and rapid cycling.
            iteration = 0;
            setTemperature();
            if (steps==0) return; //We don't have temperature sensor data.

            //195 steps = 628mv, 12.8C, 55F
            //248 steps = 800mv, 30C, 86F
            if (tempOverride==1)
            {
                if (steps>=195 && steps<=248) {
                    allOff();
                    //HardReset();
                    tempOverride=0;
                  //  DelayMs(5000);
                }
            }

            if (tempOverride==0)
            {
                if (steps>=264)
                {
                    if (armed==1)
                    {
                        //264 steps = 850mv, 35C, 95F
                        tempOverride=1;
                        overTemp();
                    }

                } else if (steps<=177)
                {
                    if (armed==1)
                    {
                        //177 steps = 570mv, 7C, 44.6F
                        tempOverride=1;
                        underTemp();
                    }
                } else {
                    if (armed==0) armed=1;
                }
            }
        }
    } ETRY;
}