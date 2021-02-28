require 'sinatra/base'
require './lib/peep'

class ChitterManager < Sinatra::Base
  enable :sessions
    get '/' do
        redirect '/home' 
    end
    
    get '/home' do
      @peeps = Peep.all
      #@peep = session[:peep]
       # show all peeps
    erb :home
    end

    post '/new_peep' do
      #session[:peep] = params[:peep]
      redirect '/home'
    end

  run! if app_file == $0
end
