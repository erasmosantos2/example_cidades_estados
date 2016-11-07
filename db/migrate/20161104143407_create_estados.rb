class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome
      t.string :sigla, limit: 2
      t.integer :capital
    end

    add_index :estados, :capital
  end
end
