class RpsController < ApplicationController
	def initialize
		@images = {"rock" => "rock.jpg", 
					"scissors" => "scissors.gif", 
					"paper" => "paper.jpg", 
					"error" => "error.png",
					"draw" => "youdraw.jpg", 
					"win" => "youwin.jpg",
					"lose" => "youlose.jpg"}
		@results = [["draw", "lose", "win"],
					["win", "draw", "lose"],
					["lose", "win", "draw"]]
		@nums = { "rock" => 0, "paper" => 1, "scissors" => 2 }
		@choices = ["rock", "paper", "scissors"]
	end

	def rps
		
	end

	def playrps
		choice = params[:choice] if @choices.include? params[:choice]
		choice ||= "error"

		cChoice = @choices.sample
		result = @results[@nums[choice]][@nums[cChoice]] if choice != "error"
		result ||= "lose"

		@rImage = @images[result]
		@image = @images[choice]
		@cImage = @images[cChoice]
	end
end