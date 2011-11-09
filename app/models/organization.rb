class Organization < ActiveRecord::Base
  validates_presence_of :name

  has_many :org_tags
  has_many :tags, :through => :org_tags
end
