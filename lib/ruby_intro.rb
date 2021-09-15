# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    arr.sort!
    arr[arr.length()-1] + arr[arr.length()-2]
  end
end

def sum_to_n? arr, n
  d = {}
  
  arr.each_with_index do |val, i|
    if d.key?(val)
      return true
    else
      d[n-val] = i
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s =~ /^(?=[A-Z])(?=[^AEIOU])/i
end

def binary_multiple_of_4? s
  if s.count('01') != s.size
    return false
  else
    return s[s.length() - 1] == '0' &&  s[s.length() - 2] == '0'
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length() == 0 || price <= 0
      raise ArgumentError
    end
     
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    if isbn.length() == 0 
      raise ArgumentError
    end
      
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    if price <= 0
      raise ArgumentError
    end
      
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % [@price]
  end
 
end


b = BookInStock.new("agg", 24.1)

puts b.price_as_string