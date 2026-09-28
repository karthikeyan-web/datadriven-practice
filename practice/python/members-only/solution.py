def filter_odd_digits(s: str) -> str:
  nums = list(map(int,s));
  odd = []
  for i in nums:
    if i % 2 != 0:
      odd.append(i);
    
  return str("".join(str(x) for x in odd))
    
  
