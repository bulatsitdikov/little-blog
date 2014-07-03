require 'spec_helper'

describe Article do
  describe 'validate presence of title && text' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
  end

  describe 'should belong to user && have many comments' do
    it { should belong_to(:user) }
    it { should have_many(:comments) }
  end
end
