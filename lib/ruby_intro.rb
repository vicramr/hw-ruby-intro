# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  accumulator = 0
  arr.each {|elem| accumulator += elem}
  accumulator
end

def max_2_sum arr
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort! {|a, b| b <=> a}
    arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  for i in 0..(arr.length - 2)
    for j in (i+1)..(arr.length - 1)
      if (arr[i] + arr[j]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
