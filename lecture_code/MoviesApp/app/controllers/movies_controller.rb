class MoviesController < ApplicationController

  def index
    @movies = [ { id: 1, title: 'Apollo 13', director: 'Ron Howard', year: 2005 },
                { id: 2, title: 'Star Wars', director: 'George Lucas', year: 1977 } ]
  end

end
