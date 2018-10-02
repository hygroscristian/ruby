class CreateSubscriptionHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :subscription_histories do |t|
      t.string :canceled_times
      t.integer :subscription_id

      t.timestamps
    end
  end
end
