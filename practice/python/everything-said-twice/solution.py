from collections import Counter;
def word_counts(text: str) -> dict:

  a = str(text);
  a_str = a.split(" ");
  #counts = Counter(a_str)
  frequency = {}
  for i in a_str:
    frequency[i] = frequency.get(i, 0) + 1;
    
  return frequency;


print(word_counts("click view click submit view view"))
