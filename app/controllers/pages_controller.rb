class PagesController < ApplicationController
  def home
  	@user = User.find_by(id: current_user.id) if current_user
  end

  def about
  end

  def person_list

    @people = Person.where(:is_enterprise => false)
    if !params[:profession].blank?
      @people = Person.where( "profession_id = ? and is_enterprise = 'f'", params[:profession])
    end
    #@people = @people.profession( params[:search] )

  # @people = @people.find_by(profession_id: params[:search_topic])
    respond_to do |format|
      format.html { render 'person_list' }
    end
  end

  def professional_upgrade_list
    @professional_upgrade_all = ProfessionalUpgrade.where("user_id = ?", params[:id])

  end
end
