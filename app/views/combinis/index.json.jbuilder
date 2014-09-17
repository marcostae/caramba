json.array!(@combinis) do |combini|
  json.extract! combini, :id
  json.url combini_url(combini, format: :json)
end
