class ChangeLayoutAgain < ActiveRecord::Migration
  def change
    remove_column :layouts, :text, :string
  end
end
