class CreateOrgTags < ActiveRecord::Migration
  def change
    create_table :org_tags do |t|
      t.integer :tag_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
