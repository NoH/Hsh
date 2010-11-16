import Hsh
import Config
import Types

config :: Config
config = Config { prefix = "> ", format = "%users% [%pwd%]", greeting = ""}

main :: IO ()
main = do
  hsh config