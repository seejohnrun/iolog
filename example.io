Importer addSearchPath("./lib")

logger := StandardLogger clone
logger info("hello")
logger warn("warning!")
logger error("error!")
logger debug("i'm tired...")

logger2 := Logger clone
logger2 transports append(ConsoleTransport clone do(
  timestamp = false
))
logger2 info("no timestamp")

# Wait
wait(1)
