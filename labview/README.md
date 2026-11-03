# To Do
Make these all documented and stuff
- Scanning Accuracy 94%
- Statemachine
    - Idle
        - Run conveyorbelt & wait for IR sensor to detect object
        - On IR object scan, move to Classify
    - Classify
        - Pauses conveyorbelt
        - Takes an image
        - uses image to classify object
        - position servo
        - move to Sort
    - Sort
        - Move conveyorbelt set amount
        - move to idle

# How to run

1. Download repository
2. Install latest version of NI labview
3. Install NI Vision Acquisition Software if not already installed
4. Attach external components to the NI-mydaq according to the table below

    | Pin | Device |
    | --- | --- |
    | DIO 7 | Manual LED (OUPUT) |
    | DIO 6 | Sort LED (OUTPUT) |
    | DIO 5 | Classify LED (OUTPUT) |
    | DIO 4 | Idle LED (OUTPUT) |
    | DIO 3 | Servo motor signal (PWM pin, OUTPUT) |
    | DIO 2 | E stop button (INPUT) |
    | DIO 1 | Motor sleep (on motor controller, OUTPUT) |
    | DIO 0 | IR sensor signal (INPUT) |
    | AIO 0 | Motor control input 1 (OUTPUT) |
    | AIO 1 | Motor control input 2 (OUTPUT) |
    | COM | USB camera (Can be plugged into any COM port) |

6. Create folder in C:\ directory named "Datalogger" and create .txt file called "Datalogger.txt"
5. Run Application.exe

# External Links

Repository Download - https://github.com/JaymondAU/LabViewObjectSorter/tree/main

NI Labview - https://www.ni.com/en/support/downloads/software-products/download.labview.html?srsltid=AYCX9vKaZAnpzRqCNb7ctTADVanc-FMCQGi2oKgKwGJ73uAx7-ccAtVA#607174

NI Vision Acquisition Software - https://www.ni.com/en/support/downloads/drivers/download.vision-acquisition-software.html?srsltid=AYCX9vJWepiRWzv9_2NQyDnCgH1PVaW0IhJumfOW3IpQZE-mQ1eqdVTX#616456

# Project Structure
```
labview\
├── ObjectSorter\
│   ├── DAQ\
│   │   ├── MotorController.vi              Conveyor motor behaviour
│   │   ├── MotorTest.vi                    Tests conveyor motor
│   │   ├── QueryIR.vi                      Assistant for object detection
│   │   └── ServoController.vi              Servo motor behaviour
│   │
│   ├── Network\
│   │   ├── CurrentServer.vi                Working server
│   │   ├── TCP server.vi                   Prototype TCP server
│   │   └── TCP server2.vi                  One-way TCP server
│   │
│   ├── SCADA\
│   │   └── SCADA.vi                        SCADA layout
│   │
│   ├── StateMachine\
│   │   └── SCADA.vi                        Server control panel
│   │
│   ├── TypeDefs\
│   │   ├── BeltControl.ctl                 Stores variables for conveyor belt
│   │   ├── ServoCommand.ctl                Stores variables for servo
│   │   └── System_State.ctl                Stores variables for state machine
│   │
│   ├── Vision\
│   │   ├── camera system compressed.vi     Obsolete camera system
│   │   └── Jay'sCameraSystem.vi            Current image capture system
│   │
│   └── ObjectSorter.lvproj                 Used for easier use with Github
│
├── RemoteClient\
│   ├── clientSCADA\
│   │   └── SCADA.vi                        Client control panel
│   │
│   ├── clientTCP\
│   │   ├── GetCameraFeed.vi                Receives camera feed from server   
│   │   └── TCP client.vi                   Client side code for TCP
│   │
│   ├── Variables\
│   │   └── ComGlobalVars.vi                Stores variables for communication
│   │
│   └── RemoteClient.lvproj                 Used for easier use with Github
│
├── RemoteClientTesting\
│   ├── Variables\
│   │   ├── TCPGlobalVars.vi                Stores variables for communication testing
│   │   ├── TCPSharedVariables.vi           Stores variables for communication testing
│   │   └── TCPSCADA.vi                     SCADA testing VI
│   │
│   ├── BetterRemoteClient.lvproj           Used for easier use with Github
│   └── README.md
│
└── README.md           
```
