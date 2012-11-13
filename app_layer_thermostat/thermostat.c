#define GetSystemClock()            32000000UL
#define GetPeripheralClock()        (GetSystemClock())
#define GetInstructionClock()       (GetSystemClock() / 2)


#include "thermostat.h"
#include "timer.h"
#include "adc.h"


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
_Bool tempOverride=0;

int processRequest(int pin)
{
    //return 1;
    if (pin==0) return 1;
    if (tempOverride==0) return 1; else return 0;
}


// Counts is 0 to 1023 indicating a step between 0v and 3.3v, 3.223mv per step.
// Each step
void setTemperature()
{
    steps = ReportChannelStatus(0);
}

void initThermostat()
{
    ADCSetScan(46,1);
   
}

void blink(int count)
{
    DelayMs(500);
    int i;
    for (i=0;i<count;i++)
    {
        SetPinDigitalOut_Override(c1Pin, 1, 0);
        DelayMs(200);
        SetPinDigitalOut_Override(c1Pin, 0, 0);
        DelayMs(200);
    }
    
}


//If temperature drops below 45 turn on the heater and leave it on until 50
//If temperature climbs above 90 turn off the heater and on the AC until 85.
void safetyOverrideCheck()
{
    iteration++;
    if (iteration>100)
    {
        //Only check every 100 loops to avoid unnecessary processing and rapid cycling.
        //iteration = 0;
        setTemperature();
        if (steps==0) return; //We don't have temperature sensor data.


        //186 steps = 600mv, 10C, 50F
        //248 = 800mv, 30C, 86F
        if (tempOverride==1)
        {
            if (steps>=186 && steps<=248) {
            //if (steps>=186 && steps<=248) {
                allOff();
                tempOverride=0;
                DelayMs(5000);
            }
        }

        if (tempOverride==0)
        {
            //if (steps>=237) //766mv, 80F
            if (steps>=254)
            {
                //254 steps = 820mv, 32C, 89.6F
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

void allOff()
{
    
    SetPinDigitalOut_Override(h1Pin, 0, 0);
    //SetPinDigitalOut_Override(h2Pin, 0, 0);
    SetPinDigitalOut_Override(c1Pin, 0, 0);
    //SetPinDigitalOut_Override(c2Pin, 0, 0);
    //SetPinDigitalOut_Override(c3Pin, 0, 0);
}

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
