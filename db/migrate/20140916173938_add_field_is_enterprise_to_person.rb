class AddFieldIsEnterpriseToPerson < ActiveRecord::Migration
  def change
    add_column :people, :is_enterprise, :boolean
  end
end
