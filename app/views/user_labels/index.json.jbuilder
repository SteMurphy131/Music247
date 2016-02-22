json.array!(@user_labels) do |user_label|
  json.extract! user_label, :id, :user_id, :label_id
  json.url user_label_url(user_label, format: :json)
end
