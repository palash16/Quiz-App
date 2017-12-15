class Leaderboard < ApplicationRecord
  belongs_to :Subgenre
  belongs_to :User
end
