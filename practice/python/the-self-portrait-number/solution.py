def is_armstrong(n: int) -> bool:
  
  
  n_str = [int(x)**3 for x in str(n)]
  output = sum(n_str)
  
  





  return True if n == output else False;
