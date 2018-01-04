print "Enter a roman numeral \n"
rnumber = gets.chomp
rnumber = rnumber.downcase
puts rnumber
rnumber_split = rnumber.split('')
number_hash = {"m" => 1000, "d" => 500, "c" => 100, "l" => 50, "x" => 10, "v" => 5, "i" => 1}
count = rnumber_split.count
total = 0
rnumber_split.count.times do |variable|
puts count
	if number_hash[rnumber_split[count-1]] <= number_hash[rnumber_split[count - 2]]
	total = total + number_hash[rnumber_split[count-1]]
	elsif
	count = 0 
	 total = total + number_hash[rnumber_split[count]]
	end
puts rnumber_split[count-1]
count = count - 1	
puts total
end
#puts total
#total = number_hash[rnumber_split[0]] + number_hash["m"]

#puts rnumber_split, number_hash["m"], total