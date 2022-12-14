require_relative './spec_helper'

describe Book do
  before :each do
    @book = Book.new('Title', 'Author')
  end

  describe '#new' do
    it 'takes two parameters and returns a Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe '#title' do
    it "returns the book's title" do
      expect(@book.title).to eql 'Title'
    end
  end

  describe '#author' do
    it "return the book's author" do
      expect(@book.author).to eql 'Author'
    end
  end
end
