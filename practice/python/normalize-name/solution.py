def title_case(s: str) -> str:
  a = s.split(' ')
  for i in range(len(a)):
    a[i]= a[i].capitalize()


  return (' '.join(a))
  


print(title_case("hello world"))
  





 
