class Solution:
	def twoSum(self, nums: List[int], target: int) -> List[int]:
		for idx1 in range(len(nums)):
			num_to_find = target - nums[idx1]
			for idx2 in range(idx1+1, len(nums)):
				if num_to_find == nums[idx2]:
					return [idx1, idx2]
		return None