module Stack where

data Stack a = EmptyStack | Item a (Stack a) deriving (Eq, Show)

isEmpty :: Stack a -> Bool
isEmpty EmptyStack = True
isEmpty _ = False

push :: a -> Stack a -> Stack a
push item mySpecialStack = Item item mySpecialStack

top :: Stack a -> a
top (Item a restOfStack) = a

pop :: Stack a -> Stack a
pop EmptyStack = EmptyStack
pop (Item item restOfStack) = restOfStack
