class MoviesController < ApplicationController
   def index
      @movie = Movie.all
   end
   def new
      @movie = Movie.new
   end
   def create
      @movie = Movie.new(movie_params)
      if
         @movie.save
         redirect_to :action => :show, :id => @movie.id
      else
         render "new"
      end
   end
   def show
   @movie = Movie.find(params[:id])
   end
   private 
     def movie_params
        params.require(:movie).permit(:title, :duracion, :genero, :elenco, :criticas)
    end

   def edit
      @movie = Movie.find(params[:id])
   end

   def update
      @movie = Movie.find(params[:id])
      if @movie.update(movie_params)
         redirect_to :action => :show, :id => @movie.id
      else 
         render "edit"         
      end
      
   end
   def destroy 
       @movie = Movie.find(params[:id])
       @movie.destroy 
       redirect_to :action => :index 
   end

end
