require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
       
      erb :root
    end

      get '/new' do 
        erb :'/pirates/new'
  end

  post '/pirates' do
    @pirate = Pirate.new(params)
    
    details1 = params[:pirate][:ships][0]
    @ship1 = Ship.new(details1)
    details2 = params[:pirate][:ships][1]
    @ship2 = Ship.new(details2)
    
      erb :'pirates/show'
    end

  end
end
