class CreatePecas < ActiveRecord::Migration
  def change
    create_table :pecas do |t|
      t.string :nome
      t.string :descricao
      t.string :fabricante
      t.float :valor
      t.integer :quantidade

      t.timestamps
    end
  end
end
