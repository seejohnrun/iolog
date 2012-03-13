Importer addSearchPath("./lib")

logger := StandardLogger clone
logger info("hello")
logger warn("warning!")
logger debug("debugging...")
logger error("error!")

wait(1)
