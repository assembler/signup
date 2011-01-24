require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new(
      :email => 'user@exmaple.com',
      :full_name => 'Unknown User',
      :password => 'paSSw0rd',
      :password_confirmation => 'paSSw0rd'
    )
  end
  
  
  it "is valid with valid attributes" do
    @user.should be_valid
  end
  
  it "is not valid without an email address" do
    @user.email = nil
    @user.should_not be_valid
  end
  
  it "is not valid with inproper email address format" do
    @user.email = 'foo.bar'
    @user.should_not be_valid
  end
  
  it "is not valid without password" do
    @user.password = nil
    @user.should_not be_valid
  end
  
  it "is not valid with short password" do
    @user.password = @user.password_confirmation = "pass"
    @user.should_not be_valid
  end
  
  it "is not valid with long password" do
    @user.password = @user.password_confirmation = "pass1pass2pass3pass4pass5"
    @user.should_not be_valid
  end
  
  it "is not valid with weak password" do
    @user.password = @user.password_confirmation = "password"
    @user.should_not be_valid
  end
end
