class Newsletter < ActiveRecord::Base
    belongs_to :user 
    belongs_to :city_guide
end