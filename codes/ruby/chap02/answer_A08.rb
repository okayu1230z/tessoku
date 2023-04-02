H, W = gets.split.map(&:to_i)
X = []

H.times do
    X << gets.split.map(&:to_i)
end

puts X.inspect

Q = gets.to_i

Q.times do
    a, b, c, d = gets.split.map(&:to_i)
    a -= 1
    b = b - 1
    c = c - 1
    d = d - 1
    #a = a - 1 if a == 0
end