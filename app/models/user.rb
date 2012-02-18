class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :followers, :as => :followable, :class_name => "Follow"

  has_many :follows

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

  def following?(followable)
    
  end
  
end
