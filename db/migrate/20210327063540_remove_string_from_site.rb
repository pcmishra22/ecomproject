class RemoveStringFromSite < ActiveRecord::Migration[6.1]
  def change
    remove_column :sites, :string, :string
    remove_column :sites, :string, :string
  end
end
