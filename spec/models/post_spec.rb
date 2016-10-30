require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { described_class.new(title: 'some title', body: 'my awesome body') }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a body' do
      subject.body = nil
      expect(subject).to_not be_valid
    end
  end
end
