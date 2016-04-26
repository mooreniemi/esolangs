NB. defining with everything bound
nums =: 4 5 6 8 2 3
(nums > 5) # (i. # nums)

NB. for monadic functions y
NB. is always the free variable
greater_than_five =: 3 : 0
  (y > 5) # (i. # y)
)

NB. for dyadic functions y
NB. is right, x is left
greater_than =: 4 : 0
  (x > y) # (i. # x)
)

NB. & allows for partial application here
NB. @: allows for composition
NB. only one free variable, tacitly
greater_than_four =: (>&4) # (i.@:#)

NB. now we have 2 tacit free variables
NB. we need to split off left and right
NB. but we can also cheat using 13 :
13 : '(x > y) # (i. # x)'
NB. which is actually equivalent to
NB. > # @: i. @: # [
get_positions_over =: > # [: i. [: # [