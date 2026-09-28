def total_activity_minutes(record):
  


  all_minutes = sum([activity['minutes'] for activity in record['activities']])



  return all_minutes
