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

  debug := method(msg, log("debug", msg))
  info  := method(msg, log("info",  msg))
  warn  := method(msg, log("warn",  msg))
  error := method(msg, log("error", msg))
  fatal := method(msg, log("fatal", msg))

)
