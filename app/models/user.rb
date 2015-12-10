class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  validates_presence_of :user_name
  validates_uniqueness_of :user_name

  after_create :init_profile

  include Gravtastic
  gravtastic

  def init_profile
    Profile.create(user_id: self.id)
  end
end
