require 'rails_helper'

RSpec.describe User, type: :model do

  let(:valid_headers) {
    {content_type: "application/json"}
  }

   describe "validations" do
    it "is valid with valid attributes" do
      user = User.new(first_name: "John", last_name: "Doe", email: "john.doe@example.com", password_digest: "password123")
      expect(user).to be_valid
    end

    it "is not valid without a first name" do
      user = User.new(last_name: "Doe", email: "john.doe@example.com", password_digest: "password123")
      expect(user).not_to be_valid
    end

     it "is not valid without a last name" do
      user = User.new(first_name: "John", email: "john.doe@example.com", password_digest: "password123")
      expect(user).not_to be_valid
    end

     it "is not valid without a password" do
      user = User.new(last_name: "Doe", email: "john.doe@example.com", first_name: "John")
      expect(user).not_to be_valid
    end

     it "is not valid without a email" do
      user = User.new(last_name: "Doe", first_name: "John", password_digest: "password123")
      expect(user).not_to be_valid
    end

    it "is not valid without a email" do
      user = User.new(last_name: "Doe", first_name: "John", password_digest: "password123")
      expect(user).not_to be_valid
    end

    it "is not valid with a email repeated" do
      User.create!(first_name: "John", last_name: "Doe", email: "john.doe@example.com", password_digest: "password123")
      user = User.new(first_name: "Johny", last_name: "Doeng", email: "john.doe@example.com", password_digest: "password12dsds3")
    
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("has already been taken")
    end
  end
end
