import json;
def parse_address(address):
  parts = address.split(",");
#print(parts);
  street = parts[0].strip();
  city = parts[1].strip();

  state_zip = parts[2].strip().split();
  #print(state_zip);
  state = state_zip[0]
  zip_code = state_zip[1]
  
  result = {
    
    "zip":zip_code,
    "city":city,
    "state":state,
    "street":street
    
    }
  
  return result
