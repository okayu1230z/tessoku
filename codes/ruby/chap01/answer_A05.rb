N, K = gets.split.map(&:to_i)

n = [*1..N]
k = 0

n.repeated_combination(3).each do |x, y, z|
    k = k + 1 if x + y + z == K
end

p k