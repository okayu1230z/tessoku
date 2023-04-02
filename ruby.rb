#array = Array.new(5) # [nil, nil, nil, nil, nil]
#array = Array.new
array = []
p array.size # 0
p array.nil? # false
p array.instance_of?(Array) #=> true