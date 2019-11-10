class CreateTariffs < ActiveRecord::Migration[6.0]
  def change
    create_table :tariffs do |t|
      t.string :city
      t.float :price
      t.float :special_price
      t.boolean :active, default: true
      
      t.timestamps
      t.date :expire_date, default: Time.now + 30.days
    end
  end
end
