class Book

 attr_accessor :title

  def title= (new_title)
    array = new_title.split(" ")

    #capitalize each word unless it's a special one

    array.each do |word|
      unless ['a', 'an', 'and', 'in', 'of', 'the'].include?(word)
        word.capitalize!
      end
    end

    #capitalize the first word

      array[0].capitalize!

    #return the title by joining the elements of the array

      @title = array.join(" ")

  end



end
