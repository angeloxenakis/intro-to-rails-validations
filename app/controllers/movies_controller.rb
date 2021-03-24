class MoviesController < ApplicationController
    def index 
        @movies = Movie.all
    end

    def show
        @movie = Movie.find_by(id: params[:id])
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(title: params[:movie][:title], rating: params[:movie][:rating])

        if params[:movie][:title] != ""
            @movie.save
            redirect_to @movie
        else
            render :new
        end
    end
end
