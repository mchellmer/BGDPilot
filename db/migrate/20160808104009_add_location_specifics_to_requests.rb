class AddLocationSpecificsToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :union, :string
    add_column :requests, :mouza, :string
    add_column :requests, :village, :string
  end
end
