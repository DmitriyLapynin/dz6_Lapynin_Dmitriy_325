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

mult_one :: Prod a Int -> a
mult_one (Prod x 1) = x 

mult_one_2 :: a -> Prod a Int
mult_one_2 x = (Prod x 1)

--number 4: Bool ~ Int 

bool_int :: Bool -> Int
bool_int True = 1
bool_int False = 0

int_bool :: Int -> Bool
int_bool 1 = True
int_bool 0 = False

--number 5: a + a = 2*a 

sum_two_elem :: Sum a a -> Sum (Prod Int a) (Prod Int a)
sum_two_elem (SumLeft x) = SumLeft (Prod 1 x) 
sum_two_elem (SumRight x) = SumRight (Prod 1 x)

sum_two_elem_2 :: Sum (Prod Int a) (Prod Int a) -> Sum a a
sum_two_elem_2 (SumLeft (Prod 1 x)) = SumLeft x
sum_two_elem_2 (SumRight (Prod 1 x)) = SumRight x




