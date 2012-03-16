# This is a Logger class
Logger := Object clone do(

  # This is a list of transports that will be used
  transports := List clone

  # Log a certain type of message
  log := method(oftype, msg,
    transports foreach(transport,
      transport asyncSend(log(oftype, msg))
    )
  )

  # Set up log levels
  list("info", "debug", "error", "warn") foreach(level,
    setSlot(level, method(msg,
      log(level, msg)
    ))
  )

)
