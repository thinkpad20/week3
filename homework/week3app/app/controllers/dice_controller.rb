class DiceController < ApplicationController
	def initialize
		@images = {	tryagain: "rollagain.jpg", 
					win: "youwin.jpg",
					lose: "youlose.jpg"}
		# @nextStepMethod = "post"
	end

	def dice

 	end

 	def rolldice
 		roll = diceRoll
 		@rollval = roll[0] + roll[1]

 		if params[:point].present?
 			point = params[:point].to_i
 			puts "found point of #{point}, rollval of #{@rollval}"
 			@pointText = "Your point is " + params[:point]
 			if @rollval == point
 				result = :win
 			elsif @rollval == 7 
 				result = :lose
 			else
 				result = :tryagain
 			end
 		else
 			@pointText = "This is your first roll."
 			if @rollval == 7 || @rollval == 11
 				result = :win
 			elsif @rollval == 2 || @rollval == 3 || @rollval == 12
 				result = :lose
 			else
 				result = :tryagain
 				point = @rollval
 			end
 		end

 		@leftDie = diceURL roll[0]
 		@rightDie = diceURL roll[1]
 		@rImage = @images[result]
 		@nextStepURL = nextStep(result, point)
 		@nextStepText = nextStepT(result)
 		@nextStepMethod = nextStepM(result)
 	end

 	def diceRoll
 		return [[1,2,3,4,5,6].sample, [1,2,3,4,5,6].sample]
 	end

 	def diceURL(val)
 		return "dice-" + val.to_s + ".png"
 	end

 	def nextStep(result, point)
 		if result == :tryagain
 			return "/dice/roll?point=" + point.to_s
 		else
 			return "/dice"
 		end
 	end

 	def nextStepT(result)
 		if result == :tryagain
 			return "Roll again!"
 		else
 			return "Click here to play again!"
 		end
 	end

 	def nextStepM(result)
 		if result == :win || result == :lose
 			return "get"
 		else
 			return "post"
 		end
 	end
end