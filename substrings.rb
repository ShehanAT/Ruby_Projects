# require 'set'

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# # means add to the end of this array 
# # can be used for string concatenation: "a" << "b"
# # writing output to an IO: io << "A line of text\n"
# # writing data to a message digest
# # left shift of an OpenSSL::BN: bn<<2

# def substrings(text, dictionary)
# 	list1 = Hash.new
# 	list2 = Hash.new
# 	text = text.downcase.gsub(/[^a-z0-9\s]/i, '');
# 	s = (0..text.length).inject([]){|ai,i|

# 		(1..text.length - i).inject(ai){|aj,j|

# 			# dictionary.each do |string|
# 			# 	puts aj
# 			# 	if aj == string
# 			# 		puts string
# 			# 	end
# 			# end
			
# 			aj << text[i,j]

	
# 		}
		

# 	}.uniq

# 	s.each do |i|
# 		dictionary.each do |j|
# 			if i == j
			
				
# 				list1.merge!(j => 1)

# 			end
# 		end
	
# 	end
# 	counter = 1
# 	list1.each do |key, value|
# 		list1.each do |key2, value2|
# 			if key.include? key2 and key != key2
# 				counter +=1
# 				list1.merge!(key2 => counter)
# 			else
# 				counter = 1
# 				list1.merge!(key2 => counter)
# 			end

# 		end
# 		counter = 0
# 	end 
# 	puts list1


# end 

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(wordToCheck,dictionary)
    dictionaryCount = Hash.new(0)#hash 
    wordsList = wordToCheck.downcase.split(" ")

    dictionary.each do |word|

         regexp = Regexp.new(word)#converts each word in dict to regex then compares each word in the sentence with the new regex
    
         wordsList.each do |string|
         	
            if string.match(regexp)
            	puts word 
                dictionaryCount[word] += 1#increamenting repeating words by 1
            end
         end
    end
    return dictionaryCount
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary);