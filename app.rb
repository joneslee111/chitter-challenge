require 'sinatra/base'

class ChitterManager < Sinatra::Base

    get '/' do
        'Chitter'
        redirect '/home' 
    end
    
    get '/home' do
       # show all peeps
    erb :home
    end

    post '/new_peep' do
      
      redirect '/home'
    end

  run! if app_file == $0
end
