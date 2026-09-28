def find_duplicates_only(nums: list[int]) -> list[int]:
   
  seen = []
  duplicate = []
  for i in nums:
    if i not in seen:
      seen.append(i);
    elif i in seen:
      duplicate.append(i)

#print(f"{seen}");
#print(f"{duplicate}");
  return duplicate
