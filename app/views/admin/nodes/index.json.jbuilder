json.array!(@nodes) do |node|
  json.extract! node, :title, :manager_id
  json.url node_url(node, format: :json)
end