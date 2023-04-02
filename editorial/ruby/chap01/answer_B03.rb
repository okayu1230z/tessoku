gets
a = gets.split.map(&:to_i)
 
a.combination(3).each do |i, j, k|
    if i + j + k == 1000
        puts "Yes"
        exit
    end
end
puts "No"