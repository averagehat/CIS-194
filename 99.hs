import Data.Either

myLast [] = Left "Error."
myLast [x] = Right x
myLast (_:xs) = myLast xs

myLast [1, 2, 3, 4]  == Right 4

