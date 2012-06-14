class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :followers, :as => :followable, :class_name => "Follow"

  has_many :follows
  has_many :organizations_followed, :class_name => "Organization",
    :through => :follows,
    :conditions => "follows.followable_type = 'Organization'",
    :foreign_key => :followable_id,
    :source => :organization
  has_many :organization_users
  has_many :organizations, :through => :organization_users

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  validates_presence_of :first_name, :last_name

  def admin?
    role == "admin"
  end

  def update_password(new_password)
    self.password = self.password_confirmation = new_password
    self.save
  end

  def name
    first_name + " " + last_name
  end

  def follow(followable)
    sub = follows.create(:user_id => id, :followable_id => followable.id, :followable_type => followable.class.to_s)
    sub.persisted?
  end

  def following_org?(org)
    organizations_followed.include? org
  end

  def joined?(org)
    organizations.include? org
  end
  
end
