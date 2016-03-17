class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :location
      t.integer :depth
      t.string :color

      t.timestamps null: false
    end
  end
end
