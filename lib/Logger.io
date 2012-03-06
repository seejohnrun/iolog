# This is a Logger class
Logger := Object clone do(

  # This is a list of transports that will be used
  transports := List clone

  # Log info
  info := method(msg,
    log("info", msg)
  )

  # Log debug
  debug := method(msg,
    log("debug", msg)
  )

  # Log error
  error := method(msg,
    log("error", msg)
  )

  # Log warn
  warn := method(msg,
    log("warn", msg)
  )

  # Log a certain type of message
  log := method(oftype, msg,
    transports foreach(transport,
      transport log(oftype, msg)
    )
  )

)
