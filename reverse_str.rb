easy_str = "able was I ere I saw elba"
rev_str = easy_str.reverse
print easy_str
print "\n"
print rev_str
print "\n"

if easy_str == rev_str
  print "palindrome!"
  print "\n"
else
  print "nope"
end



# Reversing with array
str1 = "gettin jiggy wit it"

str_ary = Array.new
str_ary = str1.split(//) # http://ruby-doc.org/core-2.2.0/String.html#method-i-split

str_ary.reverse!

str2 = str_ary.join

print str2
