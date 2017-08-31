main = do
    print $ hanoi 3 "a" "b" "c"

list = [1,2,3,4,5,6]

cc = [3,3,3,3,0,0,0,0,3,0,3,0,3,3,3,3]
ccnum = 3333000030303333

sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = []     -- Do nothing to the empty list
sumEveryTwo (x:[])     = [x]    -- Do nothing to lists with a single element
sumEveryTwo (x:(y:zs)) = (x + y) : sumEveryTwo zs

toDigits :: Integer -> [Integer]
toDigits x
    | x <= 0    = []
    | x < 10    = [x]
    | otherwise = toDigits (div x 10) ++ [mod x 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev x
    | x <= 0    = []
    | x < 10    = [x]
    | otherwise = [mod x 10] ++ toDigitsRev (div x 10)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther []         = []
doubleEveryOther (x:[])     = [x]
doubleEveryOther (x:y:zs)
    | mod (length(x:y:zs)) 2 == 0   = x*2 : y : doubleEveryOther zs
    | otherwise                     = x : y*2 : doubleEveryOther zs
    
sumDigits :: [Integer] -> Integer
sumDigits []        = 0
sumDigits (x:xs)    = x + sumDigits xs

validate :: Integer -> Bool
validate x = mod x 10 == 5

-- Towers of Hanoi
-- no seriously what the fuck
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 a b c = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a,b)] ++ hanoi (n-1) c b a




