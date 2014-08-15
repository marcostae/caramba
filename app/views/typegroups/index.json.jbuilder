json.array!(@typegroups) do |typegroup|
  json.extract! typegroup, :id
  json.url typegroup_url(typegroup, format: :json)
end
