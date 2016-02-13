Android Thermostat Firmware Modifications
=========================================

A modified version of the IOIO firmware that adds safeguards to maintain a safe temperature range of 45F to 90F regardless of the commands received from Android

## MatthGyver update

My modifications are compatible with Android 4+ (tested on Nexus / KitKat)

Now it is not necessary to activate the USB debug mode.

I'm not a developer and provided this version <b>without any warranty so use this version to your own risk.</b>

## Setup

* Download the base IOIO firmware from https://github.com/ytai/ioio
* Follow the instructions here to get the IOIO Manager app and install the Blink firmware as a test.  https://github.com/ytai/ioio/wiki/The-IOIO-Manager-Application
* Copy the app_layer_thermostat project to the firmware folder and compile using MPLAB X
* If you're using Windows use Cygwin to get a linux style command prompt
* Navigate to the ioio-master root directory
* Run:  tools/hex2ioio/hex2ioio firmware/app_layer_thermostat/dist/IOIO0030/production/*.hex /tmp/IOIO0030.ioio
* Run: 	zip -j thermostat-rev-b.ioioapp /tmp/IOIO0030.ioio
* Deploy to the IOIO-OTG using IOIODude

## License

Copyright (C) 2013 Trilitech, LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
