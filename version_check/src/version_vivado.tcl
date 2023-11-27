#copied and pasta from analog devices check and turning into a function.

#check ip version by susing vlvn
proc vivado_ip_vlvn_version_check {req_ip_version} {
  set ip_version [get_ipdefs -quiet -vlnv $req_ip_version]

  if {$ip_version eq ""} {
    puts "ERROR: Vivado IP version not found, expected $req_ip_version."
    exit 2
  } else {
    puts "INFO: Vivado IP $ip_version found in catalog."
  }
}

proc vivado_version_check {req_vivado_version} {
  set vivado_version [version -short]

  if {[string compare $vivado_version $req_vivado_version] != 0} {
    puts "ERROR: Vivado version mismatch expected $req_vivado_version, have $vivado_version."
    exit 2
  } else {
    puts "INFO: Vivado version matches requested version."
  }
}

