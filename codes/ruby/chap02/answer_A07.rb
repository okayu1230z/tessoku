D = gets.to_i
N = gets.to_i
tmpsop = Array.new(D+1).map{0}
sop = [0]

N.times do
    l, r = gets.split.map(&:to_i)
    tmpsop[l] += 1
    tmpsop[r+1] -= 1
end

D.times do |d|
    sop << sop.last + tmpsop[d+1]
    puts sop.last
end