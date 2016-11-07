class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome
      t.references :estado, index: true, foreign_key: true
      t.string :latitude
      t.string :longitude
    end
  end
end
