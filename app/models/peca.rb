class Peca < ActiveRecord::Base
  attr_accessible :descricao, :fabricante, :nome, :quantidade, :valor
end
