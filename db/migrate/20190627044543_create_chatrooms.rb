class CreateChatrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :manager_id, :default => nil
      t.integer :parent_id, :default => nil

      t.timestamps
    end
  end
end
