class CreateWells < ActiveRecord::Migration
  def change
    create_table :wells do |t|
      t.string :union
      t.string :Mouza
      t.string :Village
      t.integer :Depth
      t.integer :Wells
      t.float :MeanAs
      t.float :StDevAs

      t.timestamps null: false
    end
  end
end
