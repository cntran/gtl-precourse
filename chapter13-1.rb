class Array

  def shuffle(unshuffled_array, shuffled_array)
  
    # 1. randomly select an item from unshuffled array and add it to shuffled array
    # 2. repeat #1 until all elements in unshuffled array have been inspected
    
    if (unshuffled_array.count == 0)
      return shuffled_array
    end

    random_item_index = rand(unshuffled_array.count)
    shuffled_array.push(unshuffled_array[random_item_index])
    unshuffled_array.delete_at(random_item_index)
    
    shuffle(self, shuffled_array)

  end

end


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr = arr.shuffle(arr, [])
puts arr