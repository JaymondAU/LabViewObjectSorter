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