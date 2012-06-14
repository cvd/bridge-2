class AddOrganizationUsers < ActiveRecord::Migration
  def up
    create_table :organization_users do |t|
      t.references :user
      t.references :organization
      t.string :role
    end
  end

  def down
    drop_table :organization_users
  end
end
