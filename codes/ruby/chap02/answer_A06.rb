N, Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

sop = [0]
A.each do |a|
    sop.push (sop.last + a)
end

Q.times {
    l, r = gets.split.map(&:to_i)
    puts sop[r] - sop[l-1]
}