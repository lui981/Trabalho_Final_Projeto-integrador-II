Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :receita
  resources :vendas
  resources :clientes
  resources :medicamentos
  resources :fornecedors
  root to: 'fornecedors#index'

  
end
