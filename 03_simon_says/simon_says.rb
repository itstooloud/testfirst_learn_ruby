def echo (str)
  str
end

def shout (str)
  str.upcase
end

def repeat (str, this_many=1)
  append_this = str

  # "repeat once" means two iterations, therefore the
  # number of REPETITIONS isn't the parameter being fed

  if this_many > 1
    this_many = this_many - 1
  end

  this_many.times do
    str = str + " " + append_this
  end
  str
end

def start_of_word(str,nums=1)
  str = str.split("")
  i = 0
  this = ""
  while i < nums do
    this = this + str[i]
    i+=1
  end

  this

end

def first_word(str)
  str = str.split(" ")
  str[0]
end

def titleize(str)

  str_array = str.split(" ")
  str_array.collect!{|word| word.downcase} #change every word to lower case


  i = 0

  str_array[i].capitalize! #the first word is special and not subject to internal rules of capitalization

  title = str_array[i]

  i = 1 #begin the looping at the second word

  while i < str_array.length do

    if ["a", "the", "over", "and", "in", "of"].include? str_array[i]
      append_this = str_array[i]
    else
      append_this = str_array[i].capitalize
    end

    title = title + " " + append_this

    i = i + 1
  end
  title
end
