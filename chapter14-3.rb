$nesting_depth = 0

def log block_description, &block
 
  $nesting_depth = $nesting_depth + 2
  print ' ' * $nesting_depth
  puts "Beginning '#{block_description}'..."
  response = block.call
  print ' ' * $nesting_depth
  puts "...'#{block_description}'' finished, returning:"
  $nesting_depth = $nesting_depth - 2
  print ' ' * $nesting_depth
  puts response

end

log 'outer block' do
  log 'inner block' do
    'Inner block returns'
  end
  'Outer block returns'
end