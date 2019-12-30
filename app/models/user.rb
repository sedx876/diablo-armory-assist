class User < ActiveRecord::Base 
    has_many :gears
end