require 'spec_helper'
describe CapitalizeDecorator do
  before :each do
    @person = Person.new(15, "nAME")
    @capitalize_decorator = CapitalizeDecorator.new(@person)
  end

  describe "#correct_name" do
    it "capitalizes the person's name" do
      expect(@capitalize_decorator.correct_name).to eql "Name"
    end
  end
end