class AddFieldResumeToPerson < ActiveRecord::Migration
  def change
    add_column :people, :resume, :text
  end
end
