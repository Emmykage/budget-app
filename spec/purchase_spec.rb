# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject do
    user = User.create(name: 'morris')
    Purchase.new(user:, name: 'pen', amount: 24)
  end
  before { subject.save }
  describe 'name' do
    it 'name should be present' do
      subject.amount = nil
      expect(subject).to_not be_valiid
    end
    it 'photo should be present' do
      subject.name = nil
      expect(subject).to_not be_valiid
    end
  end
end
