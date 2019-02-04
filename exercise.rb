class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Match words with more than 4 letters
    new_str = str.gsub(/[a-zA-Z]{5,}/) do |word|
      # Is the > 4 letter word capitalized?
      if word =~ /[A-Z]/
        "Marklar"
      else
        "marklar"
      end
    end
    return new_str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # n1 and n1 hold the n-1 and n-2 positions in the sequence.
    # When starting at the 3rd position in the sequence (first even number), n1 and n2 will both be 1 e.g. (1,1,2,...)
    n1 = 1
    n2 = 1
    sum = 0
    (3..nth).each do
      n3 = n1 + n2
      # sum up even numbers in the sequence
      if n3.even?
        sum += n3
      end
      n1 = n2
      n2 = n3
    end
    return sum
  end
end
