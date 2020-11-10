> module Dbottch1_hw11 
>  where

Define factorial. Let Haskell infer the type of factorial.

> factorial n = if n == 0 then 1 else n * factorial(n-1)

2.f factorial :: (Eq p, Num p) => p -> p
 
> fact1 :: Int -> Int
> fact1 n = if n == 0 then 1 else n * fact1(n-1)
> fact2 :: Integer -> Integer 
> fact2 n = if n == 0 then 1 else n * fact2 (n-1)

4.
Fact1 overflows and gives 0, whereas factorial and fact2 do not. This is because Integer and Num must be wider types than just Int, and thus can support much larger numbers.

5.
a. When you type in factorial(-2), you enter an infinite loop, as there is no function return value for (-2)

b.
When you type in factorial -2, you get a non-type error back as a result.

> factP :: Integer -> Integer
> factP 0 = 1
> factP n = n * factP(n-1)

> factG x
>  | x < 0  = error "neg x"
>  | x == 0  = 1
>  | otherwise = x*factG(x-1)

For fact G, there is only one defintion with multiple guards.
factG(-2) will yield an exception with the error message "neg x".

> factG2 :: Integer -> Integer
> factG2 n
>  | n < 0  = error "neg n"
>  | n == 0  = 1
>  | otherwise = n * factG2(n-1)

> factE :: Integer -> Integer
> factE n
>  | n < 0 = error "neg n"
>  | n == 0 = 1
>  | otherwise = n * factE n-1

8.
factorial 5.1 leads to an infinite loop with no return value.
factG 5.1 and factG2 5.1 both lead to an error where "the variable is not in scope", meaning that the double argument will not work for Integer. 

factG2 5 gives back the expected result of 120, whereas factE 5 never returns a value (infinite loop).

