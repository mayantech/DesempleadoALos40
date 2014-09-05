class Person < ActiveRecord::Base
	belongs_to :user
	belongs_to :profession
	
	GENDER = ["Femenino", "Masculino"]
	STATUS = ["Buscando para Mejorar", "Empleado", "Jubilado", "Desempleado"]
end
