class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
      t.string :city
      t.string :street
      t.string :house
      t.string :flat
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
