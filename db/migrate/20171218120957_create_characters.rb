class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :health_points
      t.integer :attack_points
      t.string :bio

      t.timestamps
    end
  end
end
