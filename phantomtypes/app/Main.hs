{-# LANGUAGE FlexibleInstances #-} -- FlexibleInstances: Lets you write instance heads that aren’t just a type constructor applied to distinct type variables
{-# LANGUAGE EmptyDataDecls #-} -- Allows defining empty data types with no constructors i.e data Meter
module Main where
data Meter
data Foot

newtype Distance a = Distance Double

instance Show (Distance Meter) where
    show (Distance d) = show d ++ " meters"

miles :: Double -> Distance Meter
miles x = Distance (x * 1609.34)

feet :: Double -> Distance Foot
feet = Distance

convertToMeters :: Distance Foot -> Distance Meter
convertToMeters (Distance f) = Distance (f * 0.3048)

main :: IO ()
main = print (convertToMeters (feet 2))
