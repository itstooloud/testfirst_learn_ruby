
def add (num_one, num_two)
  num_one + num_two
end

def subtract (num_one, num_two)
  num_one - num_two
end

def power (num_one, num_two)
  num_one**num_two
end


def sum (array)
  elements = array.length
  t = 0
  total_sum = 0
  while t < elements do
    total_sum += array[t]
    t=t+1
  end
  total_sum
end

def multiply (array)
  elements = array.length
  t = 0
  total = 1
  while t < elements do
    total = total * array[t]
    t=t+1
  end
  total
end

def factorial(number)
  if number > 0
    this = 1
  else
    this = 0
  end
  
  while number > 0
    this *= number
    number -= 1
  end
  this
end
