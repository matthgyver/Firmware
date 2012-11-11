#define GetSystemClock()            32000000UL
#define GetPeripheralClock()        (GetSystemClock())
#define GetInstructionClock()       (GetSystemClock() / 2)


#include "thermostat.h"
#include "timer.h"
#include "adc.h"


// double temperature=60;
int tempC_Tenths=60;

//init to 141 steps, 455mv, 15.56C, 60F
int steps = 141;

int h1Pin=12;
int h2Pin=13;
int c1Pin=7;
int c2Pin=8;
int c3Pin=9;
int tempPin=46;
_Bool tempOverride=0;





int processRequest()
{
    return 1;
    //if (!tempOverride) return 1; else return 0;
}


// Counts is 0 to 1023 indicating a step between 0v and 3.3v, 3.223mv per step.
// Each step
void setTemperature()
{
    //ReportChannelStatus(0);
    steps = ReportChannelStatus(0);
    //steps = counts;
    // 0 counts is 0mv, -50C
    // 543 counts is 1750mv, 125C
    
    //long mv = Counts * 3.223L;
    //TempC_Tenths = mv - 500;
    //blink(TempC_Tenths / 10);
}

void initThermostat()
{
    ADCSetScan(46,1);
   
}

void blink(int count)
{
    DelayMs(5000);
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
    setTemperature();
    if (steps==0) return; //We don't have temperature sensor data.


    //186 steps = 600mv, 10C, 50F
    //248 = 800mv, 30C, 86F
    if (tempOverride && steps>=186 && steps<=248)
    //if (tempOverride && steps>=186 && steps<=230)
    {
        allOff();
        tempOverride=0;
    }

    if (!tempOverride)
    {
        //if (steps>=237) //766mv, 80F
        if (steps>=254)
        {
            //254 steps = 820mv, 32C, 89.6F
            tempOverride=1;
            overTemp();

        } else if (steps<=177)
        {
            //177 steps = 570mv, 7C, 44.6F
            tempOverride=1;
            underTemp();
        }
    }
    
}

void allOff()
{
    
    SetPinDigitalOut_Override(h1Pin, 0, 0);
    SetPinDigitalOut_Override(h2Pin, 0, 0);
    SetPinDigitalOut_Override(c1Pin, 0, 0);
    SetPinDigitalOut_Override(c2Pin, 0, 0);
    SetPinDigitalOut_Override(c3Pin, 0, 0);
     
}

void overTemp()
{
    
    SetPinDigitalOut_Override(h1Pin, 0, 0);
    SetPinDigitalOut_Override(h2Pin, 0, 0);
    SetPinDigitalOut_Override(c1Pin, 1, 0);
   
}

void underTemp()
{
    
    SetPinDigitalOut_Override(c1Pin, 0, 0);
    SetPinDigitalOut_Override(c2Pin, 0, 0);
    SetPinDigitalOut_Override(c3Pin, 0, 0);
    SetPinDigitalOut_Override(h1Pin, 1, 0);
     
}
