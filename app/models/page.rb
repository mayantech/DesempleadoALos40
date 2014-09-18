def self.search(search)
	if search
		where ('profession_id = ?', "#{search}")
	end
end