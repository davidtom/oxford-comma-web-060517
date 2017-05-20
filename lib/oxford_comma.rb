def oxford_comma (array)

  puts array.size

  case array.size

  when 1
    array[0]
  when 2
    array.join(" and ")
  else
    last_item_index = array.size-1
    string = String.new
    array.each_with_index { |item, i|
      if i == last_item_index
        string += "and #{item}"
        puts string
      else
        string += "#{item}, "
        puts string
      end
    }
    string
  end
end
