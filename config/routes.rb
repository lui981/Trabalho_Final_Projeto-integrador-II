Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :receita
  resources :vendas
  resources :clientes
  resources :medicamentos, :path => "medicamentos" do
    collection do
      get "/relatorio"  => "medicamentos#relatorio", :as => "relatorio" 
    end
  end

  resources :fornecedors, :path => "fornecedors" do
    collection do
      get "/relatorio"  => "fornecedors#relatorio", :as => "relatorio" 
    end
  end

root to: 'fornecedors#index'

end