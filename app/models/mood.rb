class Mood < ActiveRecord::Base
  has_many :activities , :class_name => "Activity", :foreign_key => "mood_id"

end
