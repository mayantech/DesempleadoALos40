class RegistrationsController < Devise::RegistrationsController
  		
  def create
    super
    @person = Person.create(user_id: current_user.id, personal_mail: current_user.email) if current_user

    @professional_upgrade = ProfessionalUpgrade.create(user_id: current_user.id, year: Time.now.year, institution: 'DAL40', upgrade: 'Upgrade', academic_title: 'academic title', country_id: 1) if current_user
  end

end

