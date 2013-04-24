class PokerController < ApplicationController
	def poker
		@suits = ["clubs", "hearts", "diamonds", "spades"]
		@ranks = ["ace", "2", "3", "4", "5", "6", "7", "8", 
					"9", "10", "jack", "queen", "king"]
		@cards = generate_cards
 	end

 	def generate_cards
 		cards = []
 		while cards.length < 5 do
	 		okcard = true

	 		# generate a random card
	 		newcard = @ranks.sample + "_of_" + @suits.sample + ".png"

	 		# make sure card is not duplicate of other in list
	 		cards.each do |card|
	 			if card == newcard
	 				okcard = false
	 			end
	 		end

	 		# if not, add it to list
	 		if okcard
	 			cards = cards << newcard
	 		end
	 	end	
	 	return cards
 	end
end