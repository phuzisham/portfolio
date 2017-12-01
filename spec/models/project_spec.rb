require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_uniqueness_of :title }
end
