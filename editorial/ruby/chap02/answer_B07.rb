T = gets.to_i
N = gets.to_i

tmpsop = Array.new(T).map{0}

N.times do
    l, r = gets.split.map(&:to_i)
    tmpsop[l] += 1
    tmpsop[r] -= 1
end

sop = []

T.times do |t|
    if t == 0
        sop << tmpsop[t]
    else
        sop << sop.last + tmpsop[t]
    end
    puts sop.last
end