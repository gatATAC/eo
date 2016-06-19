require 'spec_helper'

describe User do
  it "is valid with a name, email_address but without administrator" do
    expect(build :user).to be_valid
  end

  it {should validate_presence_of :name}
  it {should validate_presence_of(:email_address).with_message('is too short (minimum is 3 characters)')}

  it {should validate_uniqueness_of :email_address}

  it {should have_many :projects}

  it "is valid with a name, email_address and administrator" do
    expect(build :admin).to be_valid
  end

  #--- Instance Methods ---#

  context "name" do
    it "returns the name" do
      @user = create(:user, state: "active")
      expect(@user.name).to eql "Mr. Dr John Doe"
    end
  end

  #--- Class Methods --- #


end
