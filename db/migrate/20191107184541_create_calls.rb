class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.integer :duration
      t.boolean :payment_state, default: false
      t.string :phone_number
      t.datetime :time
      t.string :city
      t.timestamps
    end
  end
end
