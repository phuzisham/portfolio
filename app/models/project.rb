class Project < ApplicationRecord
  validates :title, :presence => true
  validates :title, :uniqueness => true
  validates :description, :presence => true

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
