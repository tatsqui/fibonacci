# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) because you execute the fib sequence n times
# Space complexity: O because no additional space is used to compute

# iterative solution
def fibonacci(n)
  raise ArgumentError if n == nil || n < 0 || n.class != Integer
  return n if n < 2

  if n >= 2
    current_value= 0
    previous_value = 1
    next_value = 0
    number = n - 1

    number.times do 
      next_value = current_value + previous_value 
      current_value = previous_value 
      previous_value = next_value
    end
  end
   
  return next_value
end

# simple recursive solution
# Time complexity: exponential (On^3) because this recursion has no memory so 
# the fibonacci tree function calls base case for each branch of the tree (n-1) & (n-2),
#  which grows exponentially for each subsequently higher level of the binary tree. 
# Space complexity: I am not sure, but I think that it lineary because of the call stack
# required for each branch of the binary tree. 
def fibonacci(n)
  # base case
  return n if n < 2

  return fibonacci(n-1) + fibonacci(n-2)
end