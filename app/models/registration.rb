class Registration < ActiveRecord::Base

belongs_to :activity , :class_name => "Activity", :foreign_key => "activity_id"

belongs_to :user , :class_name => "User", :foreign_key => "user_id"

end
