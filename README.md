# AFRL Util Tcl Functions
### Various reusable funtions for tcl
---

   author: Jay Convertino   
   
   date: 2023.09.19
   
   details: Various helper tcl funtions.
   
   license: MIT   
   
---

### Version
#### Current
  - V0.0.1 - initial release

#### Previous
  - none

### IP USAGE
#### Functions for Vivado
  - hierarchy_check {requested_mode} : check if hierarchy of the Vivado base system matches whats required.
    * Example: hierarchy_check "flat"
  - ip_vlvn_version_check {req_ip_version} : check the ip version from the catalog matches the one requested.
    * Example: ip_vlvn_version_check "xilinx.com:ip:processing_system7:5.5"
  - version_check {req_vivado_version} : check the Vivado tool version against the one requested
    * Example: version_check "2022.2.2"

##### Dependency include for fusesoc core file

###### helper_check
``` 
  dep:
    depend:
      - AFRL:utility:tcl_helper_check:1.0.0
```
