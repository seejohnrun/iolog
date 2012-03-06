# This is a logger with a Console Transport attached to it
StandardLogger := Logger clone do(

  # Add the default transport
  transports append(ConsoleTransport clone)

)
