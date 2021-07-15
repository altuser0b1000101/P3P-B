class User < ActiveRecord::Base
    has_many :recs 
    has_many :newsletters
    has_many :city_guides, through: :newsletters
   

end