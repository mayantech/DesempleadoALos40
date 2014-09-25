module ApplicationHelper
	def is_enterprise?
		Person.find_by(user_id: current_user, is_enterprise: true)
	end

	def dmy(date)
		date.strftime("%d/%m/%Y")
	end

	def existe_evento(evento, user)
	    UserEvent.where("event_id = ? and user_id = ?", evento, user)
	end
end
