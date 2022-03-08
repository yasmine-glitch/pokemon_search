class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :order
      t.integer :height
      t.integer :weight
      t.integer :base_experience

      t.timestamps
    end
  end
end
