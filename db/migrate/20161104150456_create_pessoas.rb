class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.references :cidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
