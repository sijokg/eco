class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null:false
      t.string :title, null:false
      t.text :description
      t.datetime :from_date
      t.datetime :to_date
      t.string :image
      t.references :status, index: true

      t.timestamps
    end
	add_index :events, :name, unique:true
  end
end
