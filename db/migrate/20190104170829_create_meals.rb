class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.bigint :side_id
      t.bigint :main_id
      t.timestamps
    end
  end
end
