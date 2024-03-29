require 'spec_helper'

describe Advertisement do

  def reset_advertisement(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @advertisement.destroy! if @advertisement
    @advertisement = Advertisement.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_advertisement
  end

  context "validations" do
    
    it "rejects empty title" do
      Advertisement.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_advertisement
      Advertisement.new(@valid_attributes).should_not be_valid
    end
    
  end

end