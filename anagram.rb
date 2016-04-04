puts "Enter one or more words, separated by spaces. Punctuation will be removed"

text = gets.chomp
text.gsub! /[^\w\s]/, '' # remove anything that's not whitespace or a standard alphanumeric character
text.downcase!
words = text.split
frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] += 1
end

puts "here's how many times each word appears: "
frequencies.each do |word, count|
  puts word + " " + count.to_s
  puts "\n"
end


words.uniq! # now removing duplicate words

# Enumerables: groub_by creates a hash based on results of block
anagramsHash = words.group_by { |word|
word.chars.sort
}

anagramsHash.delete_if { |letters, combinations|  # or anagramsHash.reject
combinations.length < 2}

puts "your anagrams are: "
anagramsHash.each do |letters, combinations|
  puts combinations
  puts "\n"

  end
