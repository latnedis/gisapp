json.array!(@authors) do |author|
  json.extract! author, :id, :code, :name, :photo, :description, :job, :birth, :death, :status
  json.url author_url(author, format: :json)
end
