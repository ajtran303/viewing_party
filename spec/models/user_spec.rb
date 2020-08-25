require "rails_helper"

RSpec.describe User do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :oauth_id }
    it { should validate_uniqueness_of :oauth_id }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :access_token }
    it { should validate_presence_of :refresh_token }
    it { should validate_presence_of :expires_at }
  end

  describe "relationships" do
    it { should have_many :friendships }
    it { should have_many(:friends).through(:friendships) }
  end
end
