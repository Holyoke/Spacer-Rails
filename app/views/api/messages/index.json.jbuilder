json.array!(@messages) do |message|
  json.extract! message, :id, :body, :corrections, :converted_text
end
