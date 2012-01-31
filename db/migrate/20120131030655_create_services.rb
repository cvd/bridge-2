class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.text :restrictions
      t.text :internal_notes
      t.integer :organization_id

      t.timestamps
    end
  end
end
