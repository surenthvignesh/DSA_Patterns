Leetcode: 167. Two Sum II - Input Array Is Sorted

Input
	numbers = [2,7,11,15]
	target = 9
Stdout
	[1, 2]
Output
	[1,2]
Expected
	[1,2]



1. For sorted arrays

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    n = numbers.length
    left = 0
    right = n-1

    while left < right do 
        sum = numbers[left] + numbers[right]
        if sum == target
            return [left += 1, right += 1]
        elsif sum > target
            right -= 1
        elsif sum < target
            left += 1
        end
    end

end

puts two_sum([2,7,11,15], 9).inspect


2. For non sorted arrays - Hash map logic


def two_sum(numbers, target)

	store_hash = {}

	numbers.each_with_index do |num, index|
		diff_value = target - num

		if store_hash.key?(diff_value)
			return [store_hash[diff_value] += 1, index += 1]
		end

		store_hash[num] = index
	end
    
    

end

puts two_sum([2,7,11,15], 9).inspect