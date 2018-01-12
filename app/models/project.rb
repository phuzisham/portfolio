class Project < ApplicationRecord
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  validates :title, :presence => true
  validates :title, :uniqueness => true
  validates :description, :presence => true

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

private
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end
end
