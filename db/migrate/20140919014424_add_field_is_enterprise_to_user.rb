class AddFieldIsEnterpriseToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_enterprise, :boolean
  end
end
