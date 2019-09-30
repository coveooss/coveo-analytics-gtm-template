import json
import re
import sys

SKIPPED_KEYS = ['___SANDBOXED_JS_FOR_WEB_TEMPLATE___', '___TERMS_OF_SERVICE___']

def print_skipped():
  return '[\033[94mSKIPPED\033[0m]'

def print_pass():
  return '[\033[92mPASS\033[0m]'

def print_fail():
  return '[\033[91mFAIL\033[0m]'
  
def print_pass_or_fail(valid):
  if valid:
    return print_pass()
  
  return print_fail()

def is_valid_json(content):
  try:
    json.loads(content)
  except ValueError as e:
    return False
  return True

header_pattern = re.compile('^___.*___$') 

# Parse the file which has multiple JSONs separated by headers of the form '___SOMETHING___'
parsed_file = {}
with open(sys.argv[1], 'r', encoding='utf-8-sig') as template_file:
  current_key = None
  current_buffer = ''
  for line in template_file.readlines():
    if header_pattern.match(line.strip()):
      if current_key:
        parsed_file[current_key] = current_buffer
      
      current_key = line.strip()
      current_buffer = ''
    else:
      current_buffer = current_buffer + line

# Go through each non skipped section and validate the JSON
validation_succeeded = True
for key in parsed_file.keys():
  if key in SKIPPED_KEYS:
    result = print_skipped()
  else:
    valid = is_valid_json(parsed_file[key])

    if not valid:
      validation_succeeded = False
      
    result = print_pass_or_fail(valid)
    
  print('Validating {:<50} {}'.format(key, result))

# Exit with error if validation did not succeed
if not validation_succeeded:
  print("Validation did not succeed.")
  exit(1)