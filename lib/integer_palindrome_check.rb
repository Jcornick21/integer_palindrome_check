# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  if number == nil || number < 0
    return false

  end
  result = number / 10
  length = 1
  while result >= 1
    result =  result / 10
    length += 1
  end
  whole_num = number
  while length > 1
    last_digit = whole_num % 10
    first_digit = whole_num / (10 ** (length - 1))
    if first_digit != last_digit
      return false
    elsif first_digit == last_digit
      whole_num = (whole_num / 10) % (10 ** (length - 2))
      length = length - 2
    end
  end
  return true

  # raise NotImplementedError
end
