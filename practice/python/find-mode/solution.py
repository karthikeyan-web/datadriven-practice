def most_frequent(lst):
  
  frequency = {}
  for i in lst:
    frequency[i] = frequency.get(i,0) + 1;

#print(frequency);

  sorted_data = dict(sorted(frequency.items(),key=lambda item: item[1], reverse=True));
  max_key = max(frequency,key=frequency.get)
#print(max_key);
  return max_key;
