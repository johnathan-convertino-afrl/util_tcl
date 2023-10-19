# AFRL Util Tcl Functions
### Various reusable funtions for tcl
---

   author: Jay Convertino   
   
   date: 2023.09.19
   
   details: Various helper funtions.   
   
   license: MIT   
   
---

## THIS CONTAINS MY OWN TCL SCRIPTS AND ANALOG DEVICES SCRIPTS, ANALOG DEVICES LICENSES APPLY TO THEIR CODE.

This is a work in progress, most analog devices stuff will probably not survive.

### Version
#### Current
  - V0.0.1 - initial release

#### Previous
  - none

### IP USAGE
#### INSTRUCTIONS

##### Dependency include for fusesoc core file
``` 
  dep:
    depend:
      - AFRL:utility:tcl_version_check:1.0.0
```
  
### fusesoc

* fusesoc_info.core created.
* Simulation uses icarus to run data through the core.

#### TARGETS

* RUN WITH: (fusesoc run --target=sim VENDER:CORE:NAME:VERSION)
  - default (for IP integration builds)
