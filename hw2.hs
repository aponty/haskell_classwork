main = do
    print $ ex2
    
function :: Integer -> Integer
function x = 5

data Thing = Shoe
    | Ship
    | SealingWax
    | Cabbage
    | King
    deriving Show
    
shoe :: Thing
shoe = Cabbage

listO'Things :: [Thing]
listO'Things = [Shoe, SealingWax, King, Cabbage, King]

data FailableDouble = Failure
                    | OK Double
                    deriving Show

ex1 = Failure
ex2 = OK 3.4











