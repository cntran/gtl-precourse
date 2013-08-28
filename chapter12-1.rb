# Find exact second of birthdate since epoch time

my_age_in_seconds = Time.local(1977, 11, 22, 1, 0) - Time.local(1970, 1, 1, 0, 0)

# When I was a billion seconds old
puts Time.at(1_000_000_000 + my_age_in_seconds) 
