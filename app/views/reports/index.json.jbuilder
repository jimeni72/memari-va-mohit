json.array!(@reports) do |report|
  json.extract! report, :id, :name_project, :description, :title_report, :subject
  json.url report_url(report, format: :json)
end
