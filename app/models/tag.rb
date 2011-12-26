class Tag < ActiveRecord::Base
  has_many :org_tags
  has_many :organizations, :through => :org_tags

  def to_s
    name
  end
end
