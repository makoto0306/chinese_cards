json.extract! card, :id, :chinese, :japanese, :pinyin, :correct_count, :incorrect_count, :created_at, :updated_at
json.url card_url(card, format: :json)