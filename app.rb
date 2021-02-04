require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do

    erb :newteam
  end

  post '/newteam' do 
    x = params
    @team_name = x[:name]
    @coach = x[:coach]
    @pg = x[:pg]
    @sg = x[:sg] 
    @sf = x[:sf]
    @pf = x[:pf]
    @c = x[:c]
    erb :team
  end
end

