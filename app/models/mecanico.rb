class Mecanico < ActiveRecord::Base
  belongs_to :funcao
  attr_accessible :funcao_id,:matricula, :nome
end
