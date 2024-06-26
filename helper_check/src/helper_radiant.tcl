#check hierarchy state of the software
# proc hierarchy_check {requested_mode} {
#   set hierarchy_mode [get_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY [get_runs synth_1]]
#
#   if {[string compare $hierarchy_mode $requested_mode] != 0} {
#     puts "ERROR: Vivado hierarchy mode mismatch expected $requested_mode, have $hierarchy_mode."
#     exit 2
#   } else {
#     puts "INFO: Vivado hierarchy matches requested mode, $hierarchy_mode."
#   }
# }

#check ip version by using vlvn
proc ip_vlvn_version_check {req_ip_version} {
  set ips [ip_catalog_list]; list

  set found [string first $req_ip_version $ips]; list

  if {$found < 0} {
    puts "ERROR: Lattice IP version not found, expected $req_ip_version."
    exit 2
  } else {
    puts "INFO: Lattice IP $req_ip_version found in catalog."
  }
}

proc version_check {req_lattice_version} {
  set lattice_version [sys_install_version]; list

  if {[string compare $lattice_version $req_lattice_version] != 0} {
    puts "ERROR: Lattice version mismatch expected $req_lattice_version, have $lattice_version."
    exit 2
  } else {
    puts "INFO: Lattice version matches requested version."
  }
}
