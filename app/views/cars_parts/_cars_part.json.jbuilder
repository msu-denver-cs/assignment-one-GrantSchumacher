json.extract! cars_part, :id, :make, :model, :vin, :parts, :created_at, :updated_at
json.url cars_part_url(cars_part, format: :json)
