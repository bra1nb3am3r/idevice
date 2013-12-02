require_relative 'spec_helper'

describe Idev::MisAgentClient do
  before :each do
    @mis = Idev::MisAgentClient.attach(idevice:shared_idevice)
  end

  it "should attach" do
    @mis.should be_a Idev::MisAgentClient
  end

  it "should list installed profiles" do
    profiles = @mis.profiles
    profiles.should be_a Array
    profiles.each do |profile|
      profile.should be_a StringIO
    end
  end

  it "should install a profile"

  it "should remove an installed profile"
end