def shuffle(unshuffled_array, shuffled_array)
  
  # 1. randomly select an item from unshuffled array and add it to shuffled array
  # 2. repeat #1 until all elements in unshuffled array have been inspected
  
  if (unshuffled_array.count == 0)
    return shuffled_array
  end

  random_item_index = rand(unshuffled_array.count)
  shuffled_array.push(unshuffled_array[random_item_index])
  unshuffled_array.delete_at(random_item_index)
  
  shuffle(unshuffled_array, shuffled_array)

end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_shuffled = shuffle(arr, [])
puts arr_shuffled

def dictionary_sort(unsorted_array, sorted_array)

  # 1. iterate through unsorted array and retrieve smallest value and add to sorted array
  # 2. repeat #1 until all elements in unsorted array have been inspected

  if (unsorted_array.count == 0)
    return sorted_array
  end


  smallest_value = unsorted_array[0].downcase
  smallest_value_index = 0
  count = 0
  unsorted_array.each do |value|
  
    if value.downcase < smallest_value.downcase
      smallest_value = value 
      smallest_value_index = count
    end

    count = count + 1
  end

  sorted_array.push(smallest_value)
  unsorted_array.delete_at(smallest_value_index)

  dictionary_sort(unsorted_array, sorted_array)

end

arr = ['ghi', 'def', 'xyz', 'BBc', 'Abc', 'Mno', 'jkl']
arr_sorted = dictionary_sort(arr, [])
puts arr_sorted
