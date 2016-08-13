class RemoveLocationGenericFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :location, :string
  end
end
