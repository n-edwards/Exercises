mm = [[10, 15], [22, 30]]
ma = [5, 7]

sum1 = mm.reduce(:+).reduce(:+)
sum2 = ma.reduce(:+)


print sum1
print "\n"
print sum2
