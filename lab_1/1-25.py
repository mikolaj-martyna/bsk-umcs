import hashlib
import sys

file_path = sys.argv[1]

with open(file_path, 'rb') as file:
    print(hashlib.file_digest(file, 'sha1').hexdigest())
