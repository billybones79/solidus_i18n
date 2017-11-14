Spree::Core::Engine.routes.draw do
  # from routing-filter gem
 
  post '/locale/set', to: 'locale#set', defaults: { format: :json }, as: :set_locale

  namespace :admin do
    resource :locale, only: [:show, :update]
  end
end
