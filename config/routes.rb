Rails.application.routes.draw do

  #Cocktail
  # get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
  # post 'cocktails/', to: 'cocktails#create', as: 'post_cocktail'
  # get 'cocktails/', to: 'cocktails#index', as: 'cocktails'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  # #Dose
  # get 'doses/new', to: 'doses#new', as: 'new_dose'
  # post 'doses/', to: 'doses#create', as: 'post_dose'

  resources :cocktails do
    resources :doses
  end

  # resources :ingredients do
  #   resources :doses
  # end

end


