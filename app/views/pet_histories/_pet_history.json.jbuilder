json.extract! pet_history, :id, :height, :weight, :vet_visit_date, :pets_id, :created_at, :updated_at
json.url pet_history_url(pet_history, format: :json)
