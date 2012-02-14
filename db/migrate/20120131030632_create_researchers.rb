class CreateResearchers < ActiveRecord::Migration
  def change
    create_table :researchers do |t|
      t.string :title
      t.string :hours_requested
      t.string :numbers_requested
      t.text :requirements
      t.string :population_served
      t.text :description
      t.text :restrictions
      t.text :internal_notes
      t.integer :organization_id


      t.timestamps
    end
  end
end
