class AddFieldLastDateEmployeeToPerson < ActiveRecord::Migration
  def change
    add_column :people, :last_date_employee, :date
  end
end
