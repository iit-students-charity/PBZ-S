class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :name
      t.string :surname
      t.string :patronymic

      t.timestamps
    end
  end
end
