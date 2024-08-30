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

def sum_to_n?(arr, number)
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end