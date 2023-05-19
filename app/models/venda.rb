class Venda < ApplicationRecord
  belongs_to :medicamento
  belongs_to :cliente
end
