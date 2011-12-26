class AddFieldsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :description, :text
    add_column :organizations, :phone, :string
    add_column :organizations, :website, :string
  end
end
