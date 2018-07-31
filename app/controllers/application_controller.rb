require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :icecream
  end

   post '/newflavor' do
  "Your new flavor is #{params[:flavor_1]} and #{params[:flavor_2]} swirl!"
end

end
