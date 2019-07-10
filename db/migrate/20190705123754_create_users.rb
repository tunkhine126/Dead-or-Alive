class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :img_url
      t.boolean :zombie, :default => true
      t.integer :quiz_id
      t.integer :location_id
      t.timestamps
    end
  end
end
