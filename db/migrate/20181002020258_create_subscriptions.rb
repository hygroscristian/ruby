class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :code
      t.datetime :expiration_date
      t.string :type_s
      t.integer :type_P
      t.integer :user_id

      t.timestamps
    end
  end
end
