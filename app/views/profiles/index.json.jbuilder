json.array!(@profiles) do |profile|
  json.extract! profile, :id, :company_name, :work_experience, :register_number, :tel, :fax, :image
  json.url profile_url(profile, format: :json)
end
