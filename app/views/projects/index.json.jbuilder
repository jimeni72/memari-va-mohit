json.array!(@projects) do |project|
  json.extract! project, :id, :name, :start_time, :end_time, :image
  json.url project_url(project, format: :json)
end
