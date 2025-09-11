module Main where
import Network.HTTP.Simple
import qualified Data.ByteString.Char8 as B8

fetchCatFact :: IO (Response B8.ByteString)
fetchCatFact = do
    let url = "https://catfact.ninja/fact"
    request <- parseRequest url
    httpBS request

main :: IO ()
main = do
    resp <- fetchCatFact
    B8.putStrLn $ getResponseBody resp