class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.datetime :duration
      t.boolean :payment_state, default: false
      t.datetime :time
      t.string :city
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
