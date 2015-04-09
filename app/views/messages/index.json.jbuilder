json.array!(@messages) do |message|
  json.extract! message, :id, :text, :corrections, :converted_text
  json.url message_url(message, format: :json)
end
