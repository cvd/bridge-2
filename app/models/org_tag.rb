class OrgTag < ActiveRecord::Base
  belongs_to :organization
  belongs_to :tag
end
