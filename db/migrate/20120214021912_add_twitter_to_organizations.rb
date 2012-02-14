class AddTwitterToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :twitter, :string

  end
end
