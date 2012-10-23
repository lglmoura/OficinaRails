class Adicionaenderecomecanco < ActiveRecord::Migration
  def up
    change_table(:mecanicos) do |t|
      t.string :endereco
      
    end
  end

  def down
    change_table(:mecanicos) do |t|
      
      t.remove :endereco
    end
  end
end
