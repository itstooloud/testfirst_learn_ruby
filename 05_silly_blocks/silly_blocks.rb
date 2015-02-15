def reverser(array)

  #has to reverse each element of the array
  strings = array.split(" ")

  i = 0
  output_this = ""

  while i < strings.length do
    output_this = output_this + " " + strings[i].reverse
    i = i + 1
  end
  output_this.lstrip.rstrip

end

def 
