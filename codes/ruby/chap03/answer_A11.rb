N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

low = 0
high = A.size-1
while low <= high
    mid = (low + high) / 2
    if A[mid] == X
        puts mid + 1
        return
    elsif A[mid] < X
        low = mid + 1
    else
        high = mid - 1
    end
end

# $ ruby codes/ruby/chap03/answer_A11.rb 
# 15 47
# 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67
# $ ruby codes/ruby/chap03/answer_A11.rb 
# 10 80
# 10 20 30 40 50 60 70 80 90 100