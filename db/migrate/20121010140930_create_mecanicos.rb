class CreateMecanicos < ActiveRecord::Migration
  def change
    create_table :mecanicos do |t|
      t.string :matricula
      t.string :nome
      t.references :funcao

      t.timestamps
    end
    add_index :mecanicos, :funcao_id
  end
end
