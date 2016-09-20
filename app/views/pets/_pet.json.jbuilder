json.extract! pet, :id, :name, :birthday, :pet_type, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
