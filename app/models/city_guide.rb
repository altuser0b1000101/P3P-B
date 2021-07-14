class CityGuide < ActiveRecord::Base
    has_many :newsletters
    has_many :users, through: :newsletters
end