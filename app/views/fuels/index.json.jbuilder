json.array!(@fuels) do |fuel|
  json.extract! fuel, :id, :calorie, :date, :food, :meal_type
  json.url fuel_url(fuel, format: :json)
end
