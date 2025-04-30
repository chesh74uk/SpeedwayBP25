class Meeting < ApplicationRecord
  validates :home_team, :away_team, :date, presence: true
end
