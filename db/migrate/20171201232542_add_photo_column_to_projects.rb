class AddPhotoColumnToProjects < ActiveRecord::Migration[5.1]
  def self.up
    change_table :projects do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :projects, :photo
  end
end
