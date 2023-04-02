N, K = gets.split.map(&:to_i)
A = []
B = []
G = []
# G = [[]*(N+1)]
(N+1).times { G << [] }

K.times do
    a, b = gets.split.map(&:to_i)
    G[a] << b
    G[b] << a
end

G.delete_at(0)

G.each.with_index do |g, i|
    puts "#{i + 1}: {#{g.join(", ")}}"
end