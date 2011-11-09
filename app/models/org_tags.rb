class OrgTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :organization
end
