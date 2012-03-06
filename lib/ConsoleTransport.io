# This is a transport for logging to STDOUT
ConsoleTransport := Object clone do(

  # The format for time stamps
  dateFormat := "%Y-%m-%d %H:%M:%S"

  # Get a timestamp - by default will return in UTC
  stamp := method(
    Date now convertToUTC asString(dateFormat)
  )

  # Log a message to the console via STDOUT
  log := method(oftype, msg,
    "#{stamp} [#{oftype}] #{msg}" interpolate println
  )

)
