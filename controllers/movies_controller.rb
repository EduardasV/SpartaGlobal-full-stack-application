class MoviesController < Sinatra::Base
  # sets the root as the parent-driectory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  # sets the view directory correctly
  set :views, proc { File.join(root, 'views') }

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @title = "Movies"
    @movies = Movie.all

    erb :'movies/index'
  end

  get '/new' do
    @title = "New movie"
    @movie = Movie.new

    erb :'movies/new'
  end

  post '/' do
    movie = Movie.new

    movie.title = params[:title]
    movie.movie_description = params[:movie_description]
    movie.movie_image = params[:movie_image]
    movie.movie_trailer = params[:movie_trailer]

    movie.save

    redirect '/'
  end

  get '/:id' do
    id = params[:id].to_i
    # binding.pry
    @movie = Movie.find(id)
    @title = 'Movie'

    erb :'movies/show'
  end

  get '/:id/edit' do
    id = params[:id].to_i

    @movie = Movie.find(id)
    @title = 'Edit movie'

    erb :'movies/edit'
  end

  put '/:id' do
    id = params[:id].to_i

    movie = Movie.find(id)

    movie.title = params[:title]
    movie.movie_description = params[:movie_description]
    movie.movie_image = params[:movie_image]
    movie.movie_trailer = params[:movie_trailer]

    movie.save

    redirect '/'

  end

  delete '/:id' do
    id = params[:id].to_i
    Movie.destroy(id)
    redirect '/'
  end
end
