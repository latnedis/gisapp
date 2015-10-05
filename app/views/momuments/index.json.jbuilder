json.array!(@momuments) do |momument|
  json.extract! momument, :id, :code, :alternative_name, :culture, :monument_type, :description, :length, :width, :approximate_area, :photo, :architectural_style, :technical_condition, :material
  json.url momument_url(momument, format: :json)
end
