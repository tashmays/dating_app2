class Profile < ActiveRecord::Base
	belongs_to :user
	acts_as_liker
  acts_as_likeable

  #a like button on the cards
  #current_user.like!(user_whos_profile_is_beening_viewed)
  

  #user.unlike!(movie)
  #user.toggle_like!(celebrity)
  #user.likes?(movie)
  #movie.liked_by?(user)
  #movie.likers(User)
  def self.liked_people(current_user)
  	Profile.all.select{ |p| current_user.profile.likes?(p)}
  	
  end
   def self.liked_user(current_user)
  	Profile.all.select{ |p| p.likes?(current_user.profile)}
  end
end
