N = gets.to_i
A = gets.split.map(&:to_i)
Q = gets.to_i

sop = [0]
A.each do |a|
    sop << sop.last + a
end

Q.times {
    l, r = gets.split.map(&:to_i)
    len = r - l + 1
    win = sop[r] - sop[l - 1]
    if (len/2.to_f < win)
        puts "win"
    elsif (len/2.to_f == win)
        puts "draw"
    else
        puts "lose"
    end
}