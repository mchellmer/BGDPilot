class AddWellIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :WellId, :integer
  end
end
