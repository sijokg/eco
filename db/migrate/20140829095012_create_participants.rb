class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :event
      t.string :phone_number, limit: 25
      t.string :email
      t.integer :user_id
      t.string :name
      t.text :description 
      t.timestamps
    end
  end
end
