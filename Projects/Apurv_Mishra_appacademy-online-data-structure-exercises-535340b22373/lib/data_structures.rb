# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  return (arr.min...arr.max).to_a.length
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  return arr == arr.sort
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  return str.downcase.count('aeiou')
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  return str.gsub(/[aeiou]/i, '')
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  int.to_s.chars.sort.reverse
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  str_list = str.downcase.chars
  for i in 0...(str_list.length - 1) do
    if str_list[i] == str_list[i+1]
      return true
      break
    end
  end
  return false
  #return str.downcase.chars.uniq.length != str.length
end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  #out = ""
  for i in (0..(arr.length -1)) do
    if i == 0
      out = "(" + arr[i].to_s
    elsif i == 3
      out += ") " + arr[i].to_s
    elsif i == 6
      out += "-" + arr[i].to_s
    else
      out += arr[i].to_s
    end
  end
  return out
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  str_list = str.split(",").sort
  return (str_list[-1].to_i - str_list[0].to_i)
end
 

#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  return (arr.drop(arr.index(arr[offset % arr.length])).concat(arr.take(arr.index(arr[offset % arr.length]))))
end