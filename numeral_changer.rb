
def roman_to_arabic
print "\nEnter a roman numeral \n\n" #asks user for a roman numeral
rnumber = gets.chomp  #  places roamn numeral into the varialbe rnumber
rnumber = rnumber.downcase #converts any uppercase letters to lower case letters in the roamn numeral
rnumber_split = rnumber.split('') #creates an array containing the letters in the roman  numeral
number_hash = {"m" => 1000, "d" => 500, "c" => 100, "l" => 50, "x" => 10, "v" => 5, "i" => 1} #creates a hash linking letters to numbers
count = rnumber_split.count #counts the  number of letters in the roman  numeral 
docount = count-1 #variable docount is one less than count
total = number_hash[rnumber_split[count-1]] #starts the total by using the hash to determine the equivalent to the last letter in the roman numeral
docount.times do |variable| #starts a loop that will run docount times
	if number_hash[rnumber_split[count-2]] >= number_hash[rnumber_split[count - 1]] #sequentially compares adjacent numbers starting with the right most two numbers
		total = total + number_hash[rnumber_split[count-2]] #depending on the comparison of the two numbers the left number of the pair is either added or subtracted from the total
	else
		total = total - number_hash[rnumber_split[count-2]]
	end

	count = count - 1	#count is updated

end
puts "\n\nThe arabic number equivalent is \n\n", total, "\n" #prints the arabic number

end



def arabic_to_roman

print "\n Enter an arabic numeral \n\n" 
inumber = Integer(gets.chomp)

whole1000 = inumber/1000 #accounts for 1000's and initaiates the roman array to hold the correct letters
left1000 = inumber%1000
roman = ["m"] * whole1000


if left1000 >= 900	#accounts for 100's between 900 and 1000
	roman.push("c", "m")
	whole500 = 0
	left500 = left1000 - 900

else				#accounts for 100's between 400  and 900
	whole500 = left1000/500
	left500 = left1000%500
if whole500 ==1
	roman.push("d")
end
end


if left500 >= 400		#accounts for 100's betwen 400 and 500
	roman.push("c", "d")
	whole100 = 0
	left100 = left500 - 400

else				#accounts for 100's between 100 and 400
	whole100 = left500/100
	left100 = left500%100
	whole100.times do 
		roman.push("c")
	end
end


if left100 >= 90		#accounts for ten's between 90 and 100
	roman.push("x", "c")
	whole50 = 0
	left50 = left100 - 90

else			#accounts for ten's betwen 50 and 90
	whole50 = left100/50
	left50 = left100%50
if whole50 == 1
	roman.push("l")
end
end	

if left50 >= 40  #accounts for ten's between 40 and 50
	roman.push("x", "l")
	whole10 = 0
	left10 = left50 - 40

else			#accounts for ten's less than 40
	whole10 = left50/10
	left10 = left50%10
	whole10.times do 
		roman.push("x")
	end
end

if left10 >= 9		#accounts for one's value of 9
	roman.push("i", "x")
	whole5 = 0
	left5 = left10 - 9

else		#accounts for ones betwen 5 and 9
	whole5 = left10/5
	left5 = left10%5
	whole5.times do 
		roman.push("v")
	end
end

if left5 >= 4	#accounts for 4
	roman.push("i", "v")

	left5 = left10 - 9

else			#accounts for ones between 0 and 4

	left5.times do 
		roman.push("i")
	end
end

answer = roman.join

print "\nThe roman numeral equivalent is:\n\n",  roman.join, "\n\n"

end

print "This program converts roman numerals to arabic as well as arabic numerals to roman \n\n"

print " Enter 1 to convert roman to arabic or 2 to convert arabic to roman\n\n"

choice = gets.chomp
if choice == "2"
	arabic_to_roman
else 
	roman_to_arabic
end