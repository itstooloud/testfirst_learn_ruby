# take an array called "letters" and strip it of however many
# leading letters are consonants


def leading_cons(letters)


vowels = ['a','e','i','o','u']
chop_this = ""
done = false
h = 0
while h < letters.length and !done do
  unless vowels.include? letters[h]
    chop_this = chop_this + letters[h]
  else
    done = true
  end

    h = h + 1
end

chop_this
end
