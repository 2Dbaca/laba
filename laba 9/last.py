import re

input_string = "aboba america 123 jora dora"

pattern = r'\b[AEIOUYaeiouy][b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]\w*'

matching_words = re.findall(pattern, input_string)

print("Список слов:", matching_words)
