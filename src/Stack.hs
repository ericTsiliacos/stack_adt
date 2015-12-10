module Stack where

data Stack a = Empty | Item

empty :: Stack a
empty = Empty

-- 'a' is a generic (not special character)
-- 'a' could be Int or String or Bool
-- Stack a versus Stack b

-- Stack a is the first parameter
-- mySpecialStack is the paramter

isEmpty :: Stack a -> Bool
isEmpty Empty = True
isEmpty _ = False

push :: a -> Stack a -> Stack a
push item mySpecialStack = Item
