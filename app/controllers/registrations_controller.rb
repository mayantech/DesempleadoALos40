class RegistrationsController < Devise::RegistrationsController
  		
  def create
    super

    @person = Person.new

    if current_user
	    @person.user_id = current_user.id
	    @person.personal_mail = current_user.email
	    @person.is_enterprise = current_user.is_enterprise 
			@person.save
		end

    @professional_upgrade = ProfessionalUpgrade.create(user_id: current_user.id, year: Time.now.year, institution: 'DAL40', upgrade: 'Upgrade', academic_title: 'academic title', country_id: 1) if current_user
  end

end

