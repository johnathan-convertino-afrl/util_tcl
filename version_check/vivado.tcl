#copied and pasta from analog devices check and turning into a function.

proc vivado_version_check {REQUIRED_VIVADO_VERSION} {
  set VIVADO_VERSION [version -short]

  if {[string compare $VIVADO_VERSION $REQUIRED_VIVADO_VERSION] != 0} {
    puts -nonewline "ERROR: vivado version mismatch; "
    puts -nonewline "expected $REQUIRED_VIVADO_VERSION, "
    puts -nonewline "got $VIVADO_VERSION.\n"
    exit 2
  } else {
    puts -nonewline "INFO: vivado version check match.\n"
  }
}

