def is_valid_email(email: str) -> bool:
  
  is_email = False;

  if "@" in email and "." in email:
    is_email = True;
    
  return is_email;
