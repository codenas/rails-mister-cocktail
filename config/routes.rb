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
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [:destroy]

  # delete '/doses/:id', to: 'doses#destroy', as: 'dose_delete'

  # resources :ingredients do
  #   resources :doses
  # end

end


