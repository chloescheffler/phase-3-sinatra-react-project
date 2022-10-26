class Question < ActiveRecord::Base
    has_many :users, through: :games
end