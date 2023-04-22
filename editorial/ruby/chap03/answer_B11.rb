N = gets.to_i
A = gets.split.map(&:to_i)
Q = gets.to_i

A_sorted = A.sort

def binary_search(value, arr)
    low = 0
    high = arr.size - 1
    while low <= high
        mid = (low + high) / 2
        if arr[mid] == value
            return mid + 1
        elsif arr[mid] < value
            low = mid + 1
        else
            high = mid - 1
        end
    end
    return mid # 存在しない場合
end

Q.times do
    x = gets.to_i
    #answer = binary_search(X, gets.to_i)
    answer = A_sorted.bsearch_index{|a| a >= x}
    answer = A_sorted.size if answer.nil?
    puts answer
end
