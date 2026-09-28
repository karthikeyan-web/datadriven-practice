def count_string_to_num(s: str) -> dict:
  frequency = {}
  for i in s:
    frequency[i] = frequency.get(i, 0) + 1

  return frequency
