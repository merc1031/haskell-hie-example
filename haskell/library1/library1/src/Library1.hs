module Library1 where

{-

>>> import qualified Data.Text as T
>>> import qualified Data.Text.Lazy as TL

>>> 1 + 1
2

>>> T.pack "1"
"1"
>>> TL.pack "1"
"1"

prop> \(l::[Int]) -> reverse (reverse l) == l
+++ OK, passed 100 tests.
-}

foo = 1
