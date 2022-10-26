class Game < ActiveRecord::Base
    belongs_to :question
    belongs_to :user
    has_many :results
end