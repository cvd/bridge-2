class Subscription < ActiveRecord::Base
  belongs_to :followable, :polymorphic => true
end
