class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :follows do |t|
       t.references :user
       t.references :followable, :polymorphic => true
       t.timestamps
    end
  end
end
