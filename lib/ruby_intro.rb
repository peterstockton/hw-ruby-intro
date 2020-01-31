# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  for x in arr
    sum += x
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  if (arr.empty?)
    return sum
  elsif arr.length == 1
    sum = arr[0]
    return sum
  else
    b = arr[0]
    a = arr[1]
    for x in arr
      if x > b
        b = x
      end
      if x > a
        b = a
        a = x
      end 
    end
    sum = a + b
  end 
  return sum 
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr.length >= 2
    for i in 0..arr.length-1
      for j in 0..arr.length-1
        if arr[i] + arr[j] == n && i!=j
          return true
        end 
      end 
    end
  end 
  return false 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  str = s.downcase
  if str[0] == "b" || str[0] == "c"|| str[0] == "d"|| str[0] == "f"|| str[0] == "g"|| str[0] == "h"|| str[0] == "j"|| str[0] == "k"|| str[0] == "l"|| str[0] == "m"|| str[0] == "n"|| str[0] == "p"|| str[0] == "q"|| str[0] == "r"|| str[0] == "s"|| str[0] == "t"|| str[0] == "v"|| str[0] == "w"|| str[0] == "x"|| str[0] == "y"|| str[0] == "z" 
    return true
  end
  return false
  
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s.empty?
    return false
  end 
  for i in 0..s.length-1
    if s[i] != "0" && s[i] != "1"
      return false 
    end 
  end 
  bin = 0
  for i in 1..s.length
    if s[s.length-i] == "1"
      bin += (2**(i-1))
    end 
  end 
  if bin%4 == 0 
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(i,price)
    @isbn = i
    @price = price
    if @isbn.empty? || @price <= 0
      raise ArgumentError
    end
  end 
  def isbn
    return @isbn
  end 
  def price
    return @price 
  end 
  def price=(s)
    @price = s
  end 
  def isbn=(s)
    @isbn = s
  end 
  def price_as_string()
    str = @price.to_s
    str.insert(0,"$")
    if str.include?(".")
      for i in 0..str.length-1
        if str[i] == "."
          if i == str.length-2
            str.insert(str.length,"0")
          end 
        end 
      end 
    else
      str.insert(str.length,".00")
    end
    return str
  end 
    
end
