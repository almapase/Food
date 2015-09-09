require 'rails_helper'

RSpec.describe Category, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "validations" do
    it "should validate presence of name" do
      should validate_presence_of(:name)
    end
    it "should validate unique of name" do
      should validate_uniqueness_of(:name)
    end
  end

  context "Create" do
    it "should create a valid" do
      expect(FactoryGirl.create(:category)).to be_valid
      #debugger
    end
    it "should create a invalid" do
      expect(FactoryGirl.build(:category_invalid)).to_not be_valid
      #debugger
    end
  end

  describe "Method hello" do
    context "when name is not nil" do
      it "should response with Hola" do
        expect(category.FactoryGirl.create(:category.hello)).to eq "Hola"
      end
    end

    context "when name is nil" do
      it "should response with chao" do
        expect(category.FactoryGirl.build(:category, name: nil)).to eq "Chao"
      end
    end
  end

end
