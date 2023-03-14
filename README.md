
This repository contains all the artifacts of a class project on building a simulation for a mall with different stores using multi-agent systems, Model driven engineering and the ASEME methodology.
The transformationCode folder contains the code for transformations. It uses Eclipse Modelling Framework and xText/xPand. It can be run by importing it in Eclipse.
## Execution instructions
* The transformation can be run by importing the transformationCode folder in Eclipse. 
* It contains a folder META-INF which contains a MANIFEST that lists all the dependencies uses. 
* These dependencies are xPand/xText and EMF related, and can be installed through Eclipse. The program takes state-charts file as xmi file. The file should be provided renamed as Model.xmi and placed in the src folder. 
* The program can be run by executing the workflow file workflow/workflow2.mwe. It generates a netlogo file placed in the src-gen.
* The netlogo file can be run by importing the code into netlogo and executing it.
