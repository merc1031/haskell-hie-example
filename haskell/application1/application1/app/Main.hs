module Main
  where

import Library1
import Library2

{-

>>> Library1.foo + Library2.foo2
2

prop> \(l::[Int]) -> reverse (reverse l) == l
+++ OK, passed 100 tests.
-}

main
  :: IO ()
main
  = pure ()
