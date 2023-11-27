#check hierarchy state of the software
proc vivado_hierarchy_check {requested_mode} {
  set hierarchy_mode [get_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY [get_runs synth_1]]

  if {[string compare $hierarchy_mode $requested_mode] != 0} {
    puts "ERROR: Vivado hierarchy mode mismatch expected $requested_mode, have $hierarchy_mode."
    exit 2
  } else {
    puts "INFO: Vivado hierarchy matches requested mode, $hierarchy_mode."
  }
}
