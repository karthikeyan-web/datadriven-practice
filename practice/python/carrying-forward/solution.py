def running_total(nums):

  sumo = []
  curr_sum = 0

  for i in nums:
    curr_sum += i
    sumo.append(curr_sum)

  return sumo
