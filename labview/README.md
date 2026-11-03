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

- how to run
- project structure

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
│   │   ├── LegacyServer.vi                 Testing server
│   │   ├── TCP server.vi                   Prototype TCP server
│   │   └── TCP server2.vi                  One-way TCP server
│   │
│   ├── SCADA\
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
