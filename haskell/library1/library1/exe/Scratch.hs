{-# LANGUAGE ScopedTypeVariables #-}

import Control.Monad (guard)

{-
>>> :t guard
guard :: Alternative f => Bool -> f ()


>>> [show x | x <- take 10 [1..] ] >>= \a -> guard (a /= "1" && a /= "5") >> a <> "a"
"2a3a4a6a7a8a9a10a"


>>> [show x | x <- take 10 [1..] ] >>= \a -> guard (not (a == "1" || a == "5")) >> a <> "a"
"2a3a4a6a7a8a9a10a"

>>> test1
"2a3a4a6a7a8a9a10a"

>>> test2
"2a3a4a6a7a8a9a10a"

>>> test3
"2a3a4a6a7a8a9a10a"

>>> test3
"2a3a4a6a7a8a9a10a"

>>> test3
"2a3a4a6a7a8a9a10a"
-}


{-
prop> \(l::[Int]) -> reverse (reverse l) == l
+++ OK, passed 100 tests.

prop> \(l::Int, r::Int) -> l + r == r + (if l < 80 then l else l + 1)
*** Failed! Falsified (after 44 tests and 3 shrinks):
(40,0)
-}

test = [show x | x <- take 10 [1..] ] >>= \a -> guard (not (a == "1" || a == "5")) >> a <> "a"

test1 =
    [show x | x <- take 10 [1..] ] >>= \a -> do
        guard (not (a == "1" || a == "5"))
        a <> "a"

test2 =
    [show x | x <- take 10 [1..] ] >>= \a -> do
        guard $ not $ a == "1" || a == "5"
        a <> "a"

test3 =
    do
        a <- [show x | x <- take 10 [1..] ]
        guard $ not $ a == "1" || a == "5"
        a <> "a"

main :: IO ()
main = pure ()
