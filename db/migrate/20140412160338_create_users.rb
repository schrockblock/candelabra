class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_handle, null: false

      t.timestamps
    end
  end
end
