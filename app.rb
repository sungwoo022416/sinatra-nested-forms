require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |attribute|
        Ship.new(attribute)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end


  end
end
