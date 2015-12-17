module Stack where

data Stack a = Empty | Item a (Stack a)

empty :: Stack a
empty = Empty

isEmpty :: Stack a -> Bool
isEmpty Empty = True
isEmpty _ = False

push :: a -> Stack a -> Stack a
push = Item

top :: Stack a -> a
top (Item value _) = value

pop :: Stack a -> Stack a
pop Empty = Empty
pop (Item value mySpecialStack) = mySpecialStack
