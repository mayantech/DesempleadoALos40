class Person < ActiveRecord::Base
	belongs_to :user
	belongs_to :profession
	has_attached_file :picture
	has_many :professional_upgrades
	
	has_many :relationships, foreign_key: :relation_id_person
	has_many :relationships, foreign_key: :relation_id_enterprise

		has_many :entsequenciaestado, foreign_key: :siguiente_estado_id 
	
	validates_attachment_content_type :picture, :content_type => %w(image/jpeg image/jpg image/png)

	GENDER = ["Femenino", "Masculino"]
	STATUS = ["Buscando para Mejorar", "Empleado", "Jubilado", "Desempleado"]

	scope :desempleadas, ->(id) { where(user_id: id) }
	scope :profession, ->(id) { where profession_id: id }

  scope :enterprise, -> { where(is_enterprise: true) }
	scope :natural, -> { where(is_enterprise: false) }
end
