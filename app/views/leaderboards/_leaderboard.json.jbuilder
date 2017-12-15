json.extract! leaderboard, :id, :Subgenre_id, :User_id, :score, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)
