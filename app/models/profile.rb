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
end
