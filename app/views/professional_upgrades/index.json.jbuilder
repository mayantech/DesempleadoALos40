json.array!(@professional_upgrades) do |professional_upgrade|
  json.extract! professional_upgrade, :id, :user_id, :year, :institution, :upgrade, :academic_title, :country_id
  json.url professional_upgrade_url(professional_upgrade, format: :json)
end
