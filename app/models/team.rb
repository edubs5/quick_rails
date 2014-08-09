class Team < ActiveRecord::Base

  has_many :players
  validates :team_name, uniqueness: true, presence: true

end
