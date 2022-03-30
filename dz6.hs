-- number 1
data Shape 
    = Circle Float
    | Rect Float Float
-- |Float| = n => n + n^2


-- number 2: Maybe a ~ Sum One a 
data Sum a b = SumLeft a | SumRight b

data One = One


f :: Maybe a -> Sum One a
f Nothing = SumLeft One
f (Just a) = SumRight a

g :: Sum One a -> Maybe a
g (SumLeft One) = Nothing
g (SumRight a) = (Just a)

--number 3: a*1 = a

data Prod a b = Prod a b 

mult_one :: Prod a One -> a
mult_one (Prod x One) = x 

mult_one_2 :: a -> Prod a One
mult_one_2 x = (Prod x One)

--number 4: a + a = 2*a 

sum_two_elem :: Sum a a -> Prod Bool a
sum_two_elem (SumLeft x) = Prod True x
sum_two_elem (SumRight x) = Prod False x

sum_two_elem_2 :: Prod Bool a -> Sum a a
sum_two_elem_2 (Prod True x) = SumLeft x
sum_two_elem_2 (Prod False x) = SumRight x




