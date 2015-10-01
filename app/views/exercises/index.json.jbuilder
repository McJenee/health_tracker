json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_type_id, :burn, :date, :time_spent
  json.url exercise_url(exercise, format: :json)
end
