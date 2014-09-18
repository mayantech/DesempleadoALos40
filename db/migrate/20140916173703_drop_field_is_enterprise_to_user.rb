class DropFieldIsEnterpriseToUser < ActiveRecord::Migration
  def change
  	remove_column :users, :is_enterprise
  end
end
