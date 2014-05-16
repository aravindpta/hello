json.array!(@bloods) do |blood|
  json.extract! blood, :id, :group, :quantity
  json.url blood_url(blood, format: :json)
end
