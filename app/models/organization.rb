class Organization < ActiveRecord::Base
  validates_presence_of :name

  has_many :org_tags, :dependent => :destroy
  has_many :tags, :through => :org_tags
  has_many :researchers, :dependent => :destroy
  has_many :services, :dependent => :destroy
  has_many :volunteers, :dependent => :destroy
  has_many :followers, :as => :followable, :class_name => "Follow"
  has_many :follows

  searchable do
    text :name, :boost => 2.0, :stored => true
    text :description, :stored => true
    text :tags
  end

  geocoded_by :street_address
  before_save :strip_phone

  after_validation :geocode,
    :if => lambda { |obj| obj.address_changed? || obj.city_changed? || obj.state_changed? || obj. zip_changed? }

  def to_s
    name
  end

  def as_json(options={})
    super(:include => :tags)
  end

  # Possibly will be slow inline... probably need to set some more specifics grained settings
  # http://outoftime.github.com/sunspot/docs/
  # or set this to be in a resque job
  def reindex
    # Sunspot.index!
    # puts 'reindexed'
  end

  GEOCODE_URL = "http://maps.googleapis.com/maps/api/geocode/json"
  def geocode_address
    params = {
      :address => street_address,
      :sensor => false
    }
    geocode_response = RestClient.get(GEOCODE_URL, :params => params,
                                      :accept => :json)
  end

  def street_address
    [address, city, state, zip].join(" ")
  end

  def strip_phone
    if phone.present?
      self.phone = self.phone.gsub /[-()\s]/, ''
    end
  end
  
end
