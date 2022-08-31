require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(15, "Name")
    @old_person = Person.new(55, "Old")
  end

  describe "#new" do
    it "takes one parameter (up to 4) and return a Person object" do
      expect(@person).to be_an_instance_of Person
      expect(@old_person).to be_an_instance_of Person
    end
  end

  describe "#age" do
    it "returns the person's age" do
      expect(@person.age).to eql 15
      expect(@old_person.age).to eql 55
    end
  end

  describe "#name" do
    it "returns the person's name" do
      expect(@person.name).to eql "Name"
      expect(@old_person.name).to eql "Old"
    end
  end

  describe "#id" do
    it "returns the person's id (an integer)" do
      expect(@person.id.class).to eql Integer
      expect(@old_person.id.class).to eql Integer
    end
  end

  describe "#parent_permission" do
    it "returns if the person has parent_permission" do
      expect(@person.parent_permission).to eql true
      expect(@old_person.parent_permission).to eql true
    end
  end

  describe "#can_use_services?" do
    it "returns if the person can use services" do
      expect(@person.can_use_services?).to eql true
      expect(@old_person.can_use_services?).to eql true
    end
  end
end
