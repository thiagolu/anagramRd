json.array!(@dados) do |dado|
  json.extract! dado, :id, :word1, :word2, :result
  json.url dado_url(dado, format: :json)
end
