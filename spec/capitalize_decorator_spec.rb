require 'spec_helper'
describe CapitalizeDecorator do
  describe "#correct_name" do
    @person = Person.new(15, "nAME")
    @capitalize_decorator = CapitalizeDecorator.new(@person)
    
    it "capitalizes the person's name" do
      expect(@capitalize_decorator.correct_name).to eql "Name"
    end
  end
end
