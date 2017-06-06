Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/new' => 'sites#new'

post '/site' => 'sites#create'

get ':url_short' => 'sites#show'

end
