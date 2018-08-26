require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

require_relative './models/movie.rb'
require_relative './controllers/movies_controller.rb'

use Rack::Reloader
use Rack::MethodOverride
# direct the request to the correct controller
run MoviesController
