json.array!(@people) do |person|
  json.extract! person, :id, :nit, :names, :last_name, :last_name_married, :born_date, :profession, :career_title, :gender, :status, :personal_mail, :home_phone, :mobile, :facebook, :linkedin, :twitter, :google, :picture
  json.url person_url(person, format: :json)
end
