class CreateToys < ActiveRecord::Migration[5.0]
  def change
    create_table :toys do |t|
      t.text :description
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
