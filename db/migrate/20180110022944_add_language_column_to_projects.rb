class AddLanguageColumnToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :language, :string 
  end
end
