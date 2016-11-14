json.array!(@userprojects) do |userproject|
  json.extract! userproject, :id, :user_id, :project_id
  json.url userproject_url(userproject, format: :json)
end
