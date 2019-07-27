class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :name
      t.boolean :public
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
