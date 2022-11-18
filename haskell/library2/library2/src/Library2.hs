module Library2 where

import Library1

{-

>>> Library1.foo

prop> \(l::[Int]) -> reverse (reverse l) == l
-}

foo2 = Library1.foo