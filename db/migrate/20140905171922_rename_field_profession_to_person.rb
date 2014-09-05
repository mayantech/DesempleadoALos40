class RenameFieldProfessionToPerson < ActiveRecord::Migration
  def change
  	rename_column :people, :profession, :profession_id
  end
end
