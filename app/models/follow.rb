class Follow < ActiveRecord::Base
  belongs_to :followable, :polymorphic => true
  belongs_to :user
  belongs_to :organization, :foreign_key => :followable_id
end
