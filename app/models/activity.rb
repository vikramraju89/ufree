class Activity < ActiveRecord::Base

has_many :registrations , :class_name => "Registration", :foreign_key => "activity_id"
belongs_to :mood , :class_name => "Mood", :foreign_key => "mood_id"
belongs_to :user

end
