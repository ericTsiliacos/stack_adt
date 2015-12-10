module Stack where

data Stack a = Empty | Item

empty :: Stack a
empty = Empty

isEmpty :: Stack a -> Bool
isEmpty Empty = True
isEmpty _ = False

push :: a -> Stack a -> Stack a
push item mySpecialStack = Item
