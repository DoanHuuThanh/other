def get_index(str, arr_words)
  result = []
  word_length = arr_words.first.length
  substr_count = str.length - word_length + 1

  (0...substr_count).each do |i|
    substr = str[i, word_length]
    result << i if arr_words.include?(substr)
  end

  if result.empty?
    puts 'not found'
  else
    puts result.inspect
  end
end

str = "mainamthenammaibun"
arr_words = ["nam", "mai"]
get_index(str, arr_words)
