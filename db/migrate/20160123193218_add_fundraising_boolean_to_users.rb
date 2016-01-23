class AddFundraisingBooleanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fundraiser, :boolean, :default => false
  end
end
