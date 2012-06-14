class Followable < ActiveRecord::Base
  belongs_to :followable, :polymorphic => true
end
