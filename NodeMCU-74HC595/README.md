# OpenSprinkler-Firmware for NodeMCU Lua Lolin V3 with 74HC595 and 8 channel Relay Board
> This Firmware is a slightly modified variant of the original OpenSprinkler firmware
> to run with an inexpensive NodeMCU and a 8 Channels Relay Module

## Supported Features:
* 8 OpenSprinkler station, controlled by the board relays
* 3 Buttons
* OLED Display (SSD1306, 128x64)
* Real Time Clock DS1307
* 2 Sensor connectors 

## Known Restrictions
* Only 8 sprinkler stations are supported (but easy to modify to support daisy-chained shift registers)
  For more details [see here](https://weworkweplay.com/play/practical-guide-to-shift-registers/)  
* RF Transmitter not supported yet
* Current sensing is not supported (disabled on the OLED display)

## Used Hardware
* [NodeMCU Lua Lolin V3](https://www.ebay.com/sch/i.html?_from=R40&_nkw=nodemcu+lua+lolin+v3+CH340&_sacat=0&LH_TitleDesc=0&_sop=12)
* [8CH Channel 5V Relay Module](https://www.ebay.com/sch/i.html?_from=R40&_nkw=8ch+relay+board+5v+blue&_sacat=0&LH_TitleDesc=0&_sop=12)
* [128x64 OLED Display (SSD1306)](https://www.ebay.com/sch/i.html?&_nkw=128x64+OLED+Display+SSD1306&_sop=15)
* [Real Time Clock (DS1307)](https://www.ebay.com/sch/i.html?_from=R40&_nkw=DS1307+I2C+RTC+Module&_sacat=0&_sop=15)  
  Since this is a 5V module it's important to remove the pull up resistors (5V!) on SDA and SCL.  
  ![RTC DS1307](../ESP12F_Relay_X4/RTC_DS1307.jpg)  
  It's also important to use a rechargeable battery LIR2332!
* [Push Buttons](https://www.conrad.com/p/diptronics-dtsm-66n-v-b-pushbutton-12-v-dc-005-a-1-x-offon-momentary-1-pcs-707570)
* 5V DC Power Supply (e.g. Common USB Charger)  
  Since the NodeMCU has no 5V output pin you can't use the USB-Port of the NodeMCU.
  Just connect the USB cable directly (`GND` and `VIN`)
* Valve Power Supply (e.g. [24V~Bell-Transformer](https://www.amazon.de/-/en/JCL-BT8-8-Brand-Bell-Transformer/dp/B00K1CWEUG), in case you use 24V AC valves.)  
  **Important:** If you want to turn on the transformer via a relay (as OpenSprinkler  Master Zone) you should consider to use a ["RC Circuit" aka "Snubber"](https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2047675.m570.l1313&_nkw=Absorption+Snubber+Circuit&_sacat=0) to protect the relay contacts.  
  ![Snubber](../ESP12F_Relay_X4/snubber.png)
## Wiring
```
                                                                                         ┌────────────────┐  
                    ┌─────────────────┐                   ┌───────────────────┐         ─┤GND             │  
           SCL   ◄──┤D1             D6├───────────────────┤CLOCK            Q0├──────────┤IN1   8 ch.     │  
           SDA   ◄──┤D2   NodeMCU   D5├───────────────────┤LATCH  74HC595   Q1├──────────┤IN2   Relay     │  
                    │    Lua Lolin  D0├───────────────────┤DATA    Shift    Q2├──────────┤IN3   Board     │  
 GND ◄── Button1 ◄──┤D4     v3        │                   │       Register  Q3├──────────┤IN4             │  
 GND ◄── Button2 ◄──┤D3               │            GND ◄──┤/OE              Q4├──────────┤IN5             │  
3.3V ◄── Button3 ◄──┤D8               │           3.3V ◄──┤RESET            Q5├──────────┤IN6             │  
                    │               3V├──► 3.3V    GND ◄──┤GND              Q3├──────────┤IN4             │  
 GND ◄── Sensor1 ◄──┤D7            GND├──► GND    3.3V ◄──┤VCC              Q6├──────────┤IN7             │  
 GND ◄── Sensor2 ◄──┤RX            VIN├──► 5V             │                 Q4├──────────┤IN5             │  
                    └─────────────────┘                   │                 Q7├──────────┤IN8             │  
                                                          └───────────────────┘  3.3V ◄──┤VCC             │  
                                                                                         │                │  
                    ┌─────────────────┐              ┌─────────────────┐          GND ◄──┤GND             │  
             SCL ◄──┤SCL              │       SCL ◄──┤SCL              │                ─┤VCC             │  
             SDA ◄──┤SDA  I2C Display │       SDA ◄──┤SDA    I2C RTC   │           5V ◄──┤JD-VCC          │  
            3.3V ◄──┤VCC   128x64 px  │      3.3V ◄──┤VCC    DS1307    │                 └────────────────┘  
             GND ◄──┤GND              │       GND ◄──┤GND              │  
                    └─────────────────┘              └─────────────────┘   
```



## Used Software
  * [Visual Studio Code](https://code.visualstudio.com/download)
  * [PlatformIO IDE Extension](https://platformio.org/install/ide?install=vscode)


## Building and flashing the firmware
* In PlatformIO select the "nodemcu_74HC595" task of the Project
* Unplug the external 5V power supply and the sensors
* Connect the NodeMCU via USB cable to you computer
* Build and upload the Firmware
* Press the RST button of the NodeMCU
* Follow the instructions of the [OpenSprinkler User Manual](https://opensprinklershop.de/wp-content/uploads/2020/05/os-manual_2.1.9.pdf)


## PCBs
I used two PCBs (see [hardware](./hardware) folder for KiCad and PDF files):

* The "mainboard", usefull to connect the NodeMCU with all other modules  
 ![mainboard](./hardware/mainboard/mainboard.png)

* The "relayboard" is an adapter for the [SparkFun Shift Register Breakout - 74HC595](https://www.sparkfun.com/products/10680) to connect the mainboard and the [8CH Channel 5V Relay Module](https://www.ebay.com/sch/i.html?_from=R40&_nkw=8ch+relay+board+5v+blue&_sacat=0&LH_TitleDesc=0&_sop=12)  
![relayboard](./hardware/relayboard/relayboard.png)

## Wi-Fi improvements:
If the Wi-Fi connectivity is poor you can add an [external antenna](https://www.amazon.de/gp/product/B07SSYSZM9) like I did in [another project](../README.md).  
See also [External Antenna for ESP8266](https://www.instructables.com/External-Antenna-for-ESP8266/) for more details.

## Meta

Distributed under the GNU General Public License license. See [LICENSE.txt](LICENSE.txt) for more information.
