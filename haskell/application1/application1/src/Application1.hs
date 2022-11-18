module Application1 where

import Library1
import Library2

{-
>>> Library1.foo + Library2.foo2
>>> foo3
2
2

prop> \(l::[Int]) -> reverse (reverse l) == l
+++ OK, passed 100 tests.
-}

foo3 = Library1.foo + Library2.foo2
