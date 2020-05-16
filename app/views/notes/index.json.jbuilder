json.array!(@notes) do |note|
  json.extract! note, :id, :title, :content, :recommendation, :price
  json.created_at note.created_at.to_s

  json.url note_url(note, format: :json)
end