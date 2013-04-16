class MoviesController < ApplicationController

  def create
    #....
  end
  def new

  end
  def details
    @movies = { 1 => { title: 'Apollo 13', director: 'Ron Howard', year: 2005 },
                2 => { title: 'Star Wars', director: 'George Lucas', year: 1977 },
                3 => { title: 'Casablanca', director: 'Me', year: 1941 },
                 }

    @movie = @movies[params[:id].to_i]

    # render 'hello'
    # render text: 'Hello'
    # render
  end

  def index
    @movies = [ { id: 1, title: 'Apollo 13', director: 'Ron Howard', year: 2005 },
                { id: 2, title: 'Star Wars', director: 'George Lucas', year: 1977 } ]

    # @title = params["title"] || "Movies"

    @title = params[:title] if params[:title].present?
    @title ||= "Movies"
    # @title = @title || "Movies"


    # querystring_title = params["title"]

    # if querystring_title.present?
    #   @title = querystring_title
    # end

  end

end
