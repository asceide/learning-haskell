module ListTutorial where

--Lists are homogenous data structures in Haskell, meaning that all of its contents must be of the same data type.

lostNumbers = [4,17,23,45,66]
foundNumbers = [5,18,24,47,67]

--You can attach two lists together using ++ prefix operator. The ++ has to go through the whole list on the left side of the operator. Thu, for bigger lists it is more useful to use the : cons operator if you're putting something at the start of a list. For example 
lostNumbers ++ foundNumbers -> [4,17,23,45,66,5,18,24,47,67]

-- : takes a number (on the left) or a list, and a list (on the right). On the other hand, ++ takes two lists. Even if you want to add just one number, if you're using ++ you must enclose that number in square brackets in order to make it into a list
'A' : 'Small cat' -> 'A Small Cat'
4: [1,2,3] -> [4,1,2,3]

--Lists can contain lists. An empty list is declared as []. A list of lists is [[],[]].!!
--To remove an element from a list by index, !! is used
--for example lostNumbers !!
lostNumbers !! 2 --would remove the element at index 2


--Lists can be compared using <, <=, >, >=, ==. They are compared in lexicographical order. First they compare the heads of the array. ONLY IF the heads are equal does it check the second element. If they aren't, then the expression returns true or false.!!
--This doesn't include == however.!!
[3,2,1] >= [3,5,7] --would return false
[3,2,1]<[5,2,1] --would return true

--Some more list functions:
head [5,4,3,2,1] --head returns the first number of the array, 5
tail [5,4,3,2,1] --returns the array with out the head, [4.3.2.1] 
last[5,4,3,2,1] --returns the last number in the array, 1
init[5,4,3,2,1] --returns the array without the last number, [5,4,3,2]
length[5,4,3,2,1] --returns the length of the array, 5
null [5,4,3,2,1]
null []
lostNumbers == [] --returns if the list is empty or not. If you have a named list, use xs == [] to see if a list is empty
reverse [5,4,3,2,1] --reverses the list, [1,2,3,4,5]
take 3 [5,4,3,2,1] --take has the parameters of a number n and a list, and extracts n numer of elements from the beginning of the list. take 3 [5,4,3,2,1] returns [5,4,3]
drop 3 [5,4,3,2,1] --drop works similarly to take, but instead removes the first n numbers from the list. drop 3 [5,4,3,2,1] returns [2,1]
min[5,3,1] --returns minimum number, 1
max[5,3,1] --returns maximum number, 5
sum[5,3,1] --returns the sum of the list, 9
product[5,3,1] --returns the product of the list, 15
3 `elem` [5,4,3,2,1] --`elem` is a prefix operator that takes in a number and a list and checks if that number is in that list, returns true or false.
-- `elem` is a prefix operator that take in a parameter and list and checks if that parameter is an element of the list. Ex. 4 `elem` [1,2,3,4,5] -> true

--RANGES
--You can use ranges with Haskell, I.E. 
[1..20]--will return a list containing all the numbers between 1 and 20
[A..Z]-- will return a list containing all the alphabet btwn A and Z
[K-Z] --from K to Z
--If you want to specify step, for example, you need to include a second parameter
[3,6..20] --includes all numbers that are multiples of 3
--However, they aren't that smart, so they aren't able to see the powers of 2 i.e. it cannot do [1,2,4,8...100], because you can only specify one step. and some sequences are ambiguous if only given the first couple of terms
--Floating point lists shouldn't also be used with ranges because the results can be odd.!!

--You can use ranges to making infinite lists. Since Haskell is lazy it won't evaluate the infinite list until you need it. For example, if you wanted the first 24 numbers in an infinite list of multiples of 13, you can use take 24 [13,26..]
--Functions that produce infinite lists: 
cycle [1,2,3] --Cycle takes a list and cycles an infinite list. For example, cycle [1,2,3] would return a list of [1,2,3,1,2,3,1,2,3,1,2,3...inf]. and cycle["LOL "] would return ["LOL LOL LOL"]. In order to slice the list with n numbers, use take
repeat 5 --makes an infinite list of the element specified by repeat. Again, use take to slice the list.
replicate 3 10 --Makes a list of 3 that repeats 10. Easier to use than repeat

--LIST COMPREHENSION 

