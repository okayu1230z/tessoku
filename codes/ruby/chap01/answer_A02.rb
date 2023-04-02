_, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.include?(K) ? "Yes" : "No"