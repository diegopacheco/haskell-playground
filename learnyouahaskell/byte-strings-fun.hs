import qualified Data.ByteString.Lazy as B  
import qualified Data.ByteString as S  

main :: IO()
main = do
    let result = B.pack [99,97,110]
    putStr(show result)