Rails.application.routes.draw do

  scope 'v1' do
    resources :comments, only: [:index, :show]
  end

  scope 'v2' do
    get 'comments/:id', to: 'comments#show_two'
  end

  get '/', to: 'comments#home'

end
