class CreateReseearchers < ActiveRecord::Migration
  def change
    create_table :reseearchers do |t|
      t.string :title
      t.string :hours_requested
      t.string :numbers_requested
      t.text :requirements
      t.string :population_served
      t.text :description
      t.text :restrictions
      t.text :internal_notes


      t.timestamps
    end
  end
end
