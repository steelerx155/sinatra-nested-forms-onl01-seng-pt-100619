require './environment'


module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

<<<<<<< HEAD
      erb :'pirates/new'
=======
      erb :'pirates/'
>>>>>>> 17f1cf43e7a39af175fed7266ed9abd437fa1f16
    end
    
  end
end