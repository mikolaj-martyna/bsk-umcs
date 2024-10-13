import hashlib
import sys

word = sys.argv[1]
hashed_word = hashlib.md5(word.encode("UTF-8"))

print(hashed_word.hexdigest())
