class AddFieldEnterpriseNameToPeople < ActiveRecord::Migration
  def change
    add_column :people, :enterprise_name, :string, limit: 128
    add_column :people, :contact_name, :string, limit: 128
    add_column :people, :address, :string, limit: 128
    add_column :people, :location, :string, limit: 128
    add_column :people, :city_id, :integer
    add_column :people, :country_id, :integer
    add_column :people, :postal_code, :string, limit: 32
    add_column :people, :phone_office, :string, limit: 32
    add_column :people, :fax, :string, limit: 32
    add_column :people, :url, :string
    add_column :people, :industry_id, :integer
    add_column :people, :object_enterprise, :text
    add_column :people, :register_condition1, :boolean
    add_column :people, :register_condition2, :boolean
    add_column :people, :register_condition3, :boolean
    add_column :people, :register_condition4, :boolean
    add_column :people, :register_condition5, :boolean
    add_column :people, :register_condition6, :boolean
    add_column :people, :register_condition7, :boolean
    add_column :people, :register_condition8, :boolean
    
  end
end
