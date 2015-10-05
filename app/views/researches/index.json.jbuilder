json.array!(@researches) do |research|
  json.extract! research, :id, :date, :code, :research_type, :description, :area, :author_id, :monument_id
  json.url research_url(research, format: :json)
end
