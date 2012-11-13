#define GetSystemClock()            32000000UL
#define GetPeripheralClock()        (GetSystemClock())
#define GetInstructionClock()       (GetSystemClock() / 2)

#include "thermostat.h"
#include "timer.h"
#include "adc.h"
#include "features.h"


int tempC_Tenths=60;

//init to 141 steps, 455mv, 15.56C, 60F
int steps = 141;
int iteration = 0;
int h1Pin=12;
//int h2Pin=13;
int c1Pin=7;
//int c2Pin=8;
//int c3Pin=9;
int tempPin=46;
int tempOverride=0;


void overTemp()
{

    SetPinDigitalOut_Override(h1Pin, 0, 0);
    //SetPinDigitalOut_Override(h2Pin, 0, 0);
    SetPinDigitalOut_Override(c1Pin, 1, 0);
}

void underTemp()
{

    SetPinDigitalOut_Override(c1Pin, 0, 0);
    //SetPinDigitalOut_Override(c2Pin, 0, 0);
    //SetPinDigitalOut_Override(c3Pin, 0, 0);
    SetPinDigitalOut_Override(h1Pin, 1, 0);
}

void allOff()
{

    SetPinDigitalOut_Override(h1Pin, 0, 0);
    //SetPinDigitalOut_Override(h2Pin, 0, 0);
    SetPinDigitalOut_Override(c1Pin, 0, 0);
    //SetPinDigitalOut_Override(c2Pin, 0, 0);
    //SetPinDigitalOut_Override(c3Pin, 0, 0);
}



int processRequest(int pin)
{
    if (pin==0) return 1;
    if (tempOverride==0) return 1; else return 0;
}


// Counts is 0 to 1023 indicating a step between 0v and 3.3v, 3.223mv per step.
void setTemperature()
{
    steps = ReportChannelStatus(0);
}

void initThermostat()
{
    ADCSetScan(tempPin,1);
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
                tempOverride=0;
                DelayMs(5000);
            }
        }

        if (tempOverride==0)
        {
            if (steps>=264)
            {
                //264 steps = 850mv, 35C, 95F
                tempOverride=1;
                overTemp();
                DelayMs(5000);

            } else if (steps<=177)
            {
                //177 steps = 570mv, 7C, 44.6F
                tempOverride=1;
                underTemp();
                DelayMs(5000);
            }
        }
    }
}


