Rails.application.routes.draw do
  get "poker" => "poker#top"
  get "/" => "poker#top"
  get "poker/top" => "poker#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "poker/check" => "poker#check"
end
