
--{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( someFunc
    ) where
--import Turtle
--import Data.Either
someFunc :: IO ()
--someFunc = putStrLn "someFunc"--someFunc = echo "foobooroo"

--myLast' :: [Int] -> Either
--myLast' [] = Left "Error."
--myLast' [x] = Right x
--myLast' (_:xs) = myLast' xs

-- notice parens
-- this type signature is necessary to expect an instance of (Show) in myLast's result.
-- reason being that Haskell doesn't know the type of the literals 1, 2, 3, 4
myLast' :: [Int] -> (Maybe Int)
myLast' [] = Nothing
myLast' [x] = Just x
myLast' (_:xs) = myLast' xs


myLast :: [Int] -> Int
myLast [] = error "just awful"
myLast [x] = x
myLast (_:xs) = myLast xs



someFunc = do 
    print (myLast' [1, 2, 3, 4])
    print (myLast' []) 
    print $ foldl foldTree Leaf "ABCDEFGHIJK"


myButLast = head . tail . reverse

--print ((myLast [1, 2, 3, 4])  == ( Right 4 ))
--print ((myLast [])  ==           ( Left "Error." ))

--    No instance for (Num (IO Text)) arising from the literal ‘1’
--        No instance for (Num (IO Text)) arising from the literal ‘1’
--last thing in main has to be IO (i..e. print or w/e)
--
--    No instance for (Show a1) arising from a use of ‘print’
--     Couldn't match expected type ‘IO a0’ with actual type ‘Int’
--
-- :t , :info



-- foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b

data Tree a = Leaf
             | Node Integer (Tree a) a (Tree a)
             deriving (Show, Eq)
-- oh wow had to remove the OverloadedStrings thing to make this work.
--foldTree :: [a] -> Tree a
--foldTree :: [a] -> Int -> Tree a
--foldTree :: Ord a => Tree a -> a -> Tree a
foldTree :: (Tree Char) -> Char -> (Tree Char)
foldTree Leaf n = Node 1 Leaf n Leaf
--foldTree (Node h left x right) n
--   | x > n      = Node h  (Node (h+1) Leaf n Leaf) x right
--   | otherwise  = Node h  left x (Node (h+1) Leaf n Leaf)
foldTree (Node h left x right) n
   | x > n      = Node h  (Node (h+1) Leaf n Leaf) x right
   | otherwise  = Node h  left x (Node (h+1) Leaf n Leaf)
--foldTree "ABCDEFGHIJK"
--
--http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html
--
--
--
--    Ambiguous occurrence `<='
--    It could refer to either `Practice.<=', defined at Practice.hs:5:10
--                          or `Prelude.<=',
--                             imported from `Prelude' at Practice.hs:1:8-15
--
--import Prelude hiding (( <= ))
--
--putStr $  fmap (format fp) $ ls "."
--
--need to specify TMPDIR when installing via stack
-- > :t fromText
--fromText :: Text -> Turtle.FilePath
--
--
