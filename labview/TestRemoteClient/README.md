# Custom write of making TCP connections work both server and client end

**Nathan I hope you read this! I mean this whole file!**

Camera is sourced from `ObjectSorter > Network > Server` then stored in `ObjectSorter > Network > SharedVariables.lvlib`

## LabVIEW Documentation

- For info on Hosting the shared variables, refer to [Deployment and Hosting](https://www.ni.com/en/support/documentation/supplemental/06/using-the-labview-shared-variable.html#Deployment%20and%20Hosting)

- Potential error you might run into https://knowledge.ni.com/KnowledgeArticleDetails?id=kA00Z000000PAinSAG&l=en-AU

# Making Shared Variables
1. To make shared variables you have to open `ObjectSorter.lvproj`, open `Network` folder and check `SharedVariables` is in the folder.
2. Create new file (under File in top right) and create `Shared Variable`.
3. Name your variable, make sure it's the **correct data-type** you want and is **Network-Published**.

# Using Shared Variables
1. Make sure you have the correct data-type you want from `Making Shared Variables`
2. On `TCPSharedVariables.vi` get the shared variable data similar to example in [Deployment and Hosting](https://www.ni.com/en/support/documentation/supplemental/06/using-the-labview-shared-variable.html#Deployment%20and%20Hosting)
3. Send Shared Variable to global variable (create a global variableif needed) in `TCPGlobalVars.vi`
4. From the global variable, you can use it in the whole project as needed

# Note
- You've got to check IP address when deploying
- local host is `10.2.0.2`
- Sending shared variables back is not yet made
- There is some jittering of the camera, idk what to do about that, maybe something with the delay sending and recieving TCP packets