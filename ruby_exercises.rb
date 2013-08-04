# 1.
array = [1,2,3,4,5,6,7,8,9,10]
array.each do |i|
	puts i
end

# 2.
array.each do |i|
	if (i > 5)
		puts i
	end
end

# 3.
array_odd = array.select do |i|
	i % 2 != 0
end

puts array_odd

# 4. 
# append 11
array.push(11)
# prepend 0
array.unshift(0)
puts array

# 5.
array.pop()
array.push(3)
puts array

# 6. 
array.uniq!
puts array

# 7.
# array is an ordered collection of objects, a hash is an unordered collection of key value objects

# 8.
# 1.8
h = {:a => 1, :b => 2}

# 1.9
h = {a:1, b:2, c:3, d:4}

# 9.
h[:b]

# 10.
h[:e] = 5

# 13. 
h.each do |k, v|
	h.delete(k) if v < 3.5
end

h.delete_if do |k, v|
	v < 3.5
end

# 14.
# yes hash values can be arrays and you can have array of hashes
h = {a: [1,2,3], b:[4,5,6]}
arr = [{a:1, b:2}, {c:3, d:4}]

# 15. 
# http://ruby-doc.org/ - seems to be easiest to read and navigate, clean interface and organization of methods :)