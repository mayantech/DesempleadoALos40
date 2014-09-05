class Person < ActiveRecord::Base
	belongs_to :user
	belongs_to :profession
	has_attached_file :picture
	
	validates_attachment_content_type :picture, :content_type => %w(image/jpeg image/jpg image/png)

	GENDER = ["Femenino", "Masculino"]
	STATUS = ["Buscando para Mejorar", "Empleado", "Jubilado", "Desempleado"]
end
