Rails.application.routes.draw do
  resources :receita
  resources :vendas
  resources :clientes
  resources :medicamentos
  resources :fornecedors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
