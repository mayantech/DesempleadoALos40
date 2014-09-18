module ApplicationHelper
	def is_enterprise?
		Person.find_by(user_id: current_user, is_enterprise: true)
	end

	def dmy(date)
		date.strftime("%d/%m/%Y")
	end
end
