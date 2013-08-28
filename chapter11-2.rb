def music_shuffle(unshuffled_array, shuffled_array)
  
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

# My music directory
Dir.chdir '/Users/cntran/Music/iTunes/iTunes Media'

music_dir = Dir['/Users/cntran/Music/iTunes/iTunes Media/**/*.{MP3,mp3,m4a,m4v,m4p}']
my_playlist = ''

music_dir = music_shuffle(music_dir, [])
count = 0
music_dir.each do |song|
  puts song
  my_playlist = my_playlist + song + "\n"
  count = count + 1
  if count > 10
    break
  end
end

File.open 'my_playlist.m3u', 'w' do |f|
  f.write my_playlist
end