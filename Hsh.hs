module Hsh where
import Config
import System.Process
import System.IO
import Types


hsh :: Config -> IO ()
hsh config = do
  hSetBuffering stdout NoBuffering
  if (greeting config ) /= "" 
    then putStrLn $ greeting config 
    else putStr ""
  run config

evaluate :: String -> IO ()
evaluate cmd = do
  pid <- runCommand cmd
  exitCode <- waitForProcess pid
  return ()

run :: Config -> IO ()
run config = do
  putStr $ prefix config
  cmd <- getLine
  evaluate cmd
  run config
