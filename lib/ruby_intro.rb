# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.inject(0) { |total, num| total + num }
end

def max_2_sum(arr)

  sorted_array = arr.sort.reverse

  if sorted_array.size >= 2
    sorted_array[0] + sorted_array[1]
  elsif sorted_array.size == 1
    sorted_array[0]
  else
    0
  end
  
end

def sum_to_n?(arr, n)

  seen_numbers = Set.new

  arr.each do |number|

    complement = n - number

    if seen_numbers.include?(complement)
      return true
    end

    seen_numbers.add(number)
  end

  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)
  
  first_char = s[0].upcase
  
  !first_char.match?(/[AEIOU]/)
end

def binary_multiple_of_4?(s)
  return false unless s.match?(/\A[01]+\z/)

  number = s.to_i(2)

  number % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end