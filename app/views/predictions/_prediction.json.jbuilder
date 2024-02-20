json.extract! prediction, :id, :date, :sign, :text_work, :text_love, :text_money, :created_at, :updated_at
json.url prediction_url(prediction, format: :json)
