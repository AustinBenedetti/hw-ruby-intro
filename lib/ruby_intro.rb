# When done, submit this entire file to the autograder.

# Part 1
# For part one, used https://docs.ruby-lang.org/en/2.7.0/Array.html
# as reference for array methods

def sum arr
  # Return zero if empty
  if arr.empty?
    return 0
  else
    # Sum all elements in array
    @sum = 0
    for i in arr do
      @sum += i
    end
  end
  
  return @sum
end

def max_2_sum arr
  # Return zero if empty
  if arr.empty?
    return 0
  # Return element if only 1
  elsif arr.length == 1
    return arr[0]
  # Return two largest elements
  else
    @sum = arr.max(2).sum
    return @sum
  end
end

def sum_to_n? arr, n
  # Return zero if empty
  if arr.empty?
    return false
    
  # Check in sum of any two elements is n
  else
    if arr.combination(2).any? {|x,y| x + y == n}
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  @str = "Hello, " + name.to_s
  return @str
end

def starts_with_consonant? s
  
  # Return false if empty
  if s.empty?
    return false
  end
  
  # check if nonletter
  if (s[0] =~ /[a-zA-Z]/) == nil
    return false
  end
  
  # Check that first letter not vowel
  if s[0].downcase.start_with?('a','e','i','o','u') == true
    return false
  else
    return true
  end

end

def binary_multiple_of_4? s
  
  # Check if string is binary
  s_copy = s.delete('01')
  if (s_copy != '') || (s.empty? == true)
      return false
  end
  
  # Check if multiple of four
  if (s.to_i % 4 == 0)
    return true
  else
    return false
  end
  
end

# Part 3

class BookInStock
  
  # Class Variables
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize _isbn, _price
    # Reference: https://apidock.com/ruby/ArgumentError for error handling with attr_accessor
    # Alternatively could manually define getters/setters
    raise ArgumentError if _isbn.empty?
    raise ArgumentError if _price <= 0
    @isbn = _isbn
    @price = _price
  end
  
  def price_as_string 
    # Reference: https://makandracards.com/makandra/21807-ruby-number-formatting-only-show-decimals-if-there-are-any
    str_num = '$' + '%.2f' % @price
    return str_num
  end
end
