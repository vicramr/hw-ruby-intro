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
  'Hello, ' + name
end

def starts_with_consonant? s
  (s =~ /[bcdfghjklmnpqrstvwxyz].*/i) == 0
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  else
    return ((s =~ /\A[01]*00\z/) != nil) || (s == '0')
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    self.isbn=isbn
    self.price=price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    if isbn.empty?
      raise ArgumentError, "ISBN should not be empty"
    else
      @isbn = isbn
    end
  end

  def price=(price)
    if price <= 0
      raise ArgumentError, "Price must be a positive float"
    else
      @price = price
    end
  end

  def price_as_string
    "$" + ("%.2f" % @price)
  end

end
