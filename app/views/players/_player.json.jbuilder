json.extract! player, :id, :character_name, :level, :experience, :race, :character_class, :background, :alignment, :player_name, :created_at, :updated_at
json.url player_url(player, format: :json)
