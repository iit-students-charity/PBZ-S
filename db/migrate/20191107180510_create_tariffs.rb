class CreateTariffs < ActiveRecord::Migration[6.0]
  def change
    create_table :tariffs do |t|
      t.string :city
      t.float :price
      t.float :special_price
      t.date :expire_date, default: created_at + 30.days
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
