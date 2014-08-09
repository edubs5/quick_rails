class Player < ActiveRecord::Base

  belongs_to :team

  scope :sorted, lambda { order("players.rank ASC") }

end
