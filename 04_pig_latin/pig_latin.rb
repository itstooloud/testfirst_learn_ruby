# separate words beginning with vowels, consonants, 2 or 3 consonants
# special cases 'qu', 'sch'

require "leading_cons"

def translate(str)

  phrase = str.split(" ")

  vowels = ['a','e','i','o','u']
  i = 0
  j = 0

  chop_point = 0
  chopped = ""
  pig_phrase = [""]
  pig_output = ""

  while i < phrase.length do
  #  puts "Phrase length: " + phrase.length.to_s
  #  puts "i: " + i.to_s

    word = phrase[i]
    letters = word.split("")


if letters.length > 2


        if vowels.include? letters[j]
          chop = ''

        elsif
          (letters[j] + letters[j+1]).downcase == 'qu'
          chop = 'qu'

        elsif
          (letters[j] + letters[j+1] + letters[j+2]).downcase == 'squ'
          chop = 'squ'

        else
          chop = leading_cons(letters) #separate function to pull out leading consonants

        end

else
        chop = letters[j]
end

chop_point = chop.length

        while chop_point < letters.length do
          chopped = chopped + letters[chop_point]
          chop_point = chop_point + 1
        end

          pig_word = chopped + chop + "ay"
          pig_phrase << pig_word

          #reset the variables

          pig_word = ""
          chopped = ""

          j=0


  i = i+1
  end

pig_phrase.join(" ").lstrip.rstrip

end

#*****************************
