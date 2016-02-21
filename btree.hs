data Tree a = Node { value :: a
                   , left  :: (Tree a)
                   , right :: (Tree a) }
            | Leaf
            deriving Show

-- Creating a binary tree
main = do
  let n1 = Node { value = "A", left = Leaf, right = Leaf }
  let n2 = Node { value = "B", left = Leaf, right = Leaf }
  let n3 = Node { value = "C", left = n1  , right = n2 }
  print n3
