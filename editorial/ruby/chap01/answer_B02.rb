A, B = gets.split.map(&:to_i)

(A..B).each do |i|
    if (100 % i == 0)
        puts "Yes"
        return
    end  
end

puts "No"