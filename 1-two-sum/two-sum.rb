# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |n, i|
        diff = target - n
        if hash.key?(diff)
            return [hash[diff], i]
        end
        hash[n] = i
    end
    nil #nil
end