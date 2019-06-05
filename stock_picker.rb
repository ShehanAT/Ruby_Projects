
# highest day first edge case tested 
def stock_picker(stockPrices)
	lowestDay = 0;
	highestDay = 0;
	lowestPrice = stockPrices.max;
	maxPrice = stockPrices.max 
	highestPrice = 0;
	maxProfit = 0
	startPos = 0
	range = []
	stockPrices[startPos..-1].each do |price|
		maxPrice = stockPrices[startPos..-1].max
		if stockPrices[startPos] == maxPrice
			startPos += 1;
			next
		end
		if price < lowestPrice
			lowestPrice = price;
			lowestDay = stockPrices.find_index(price)
			# puts price
			stockPrices[lowestDay..-1].each do |highPrice|
				if (highPrice - lowestPrice) > maxProfit
					highestDay = stockPrices.find_index(highPrice)
					maxProfit = highPrice - lowestPrice
					range = [lowestDay, highestDay]

				end
			end
			
		end
	end
	
	puts "[" + range[0].to_s + "," + range[1].to_s + "]"


end


stock_picker([17,3,6,9,15,8,6,2,1]);