# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    user = User.create(name: 'morris')
    Group.new(user:, name: 'office', icon: 'photo')
  end
  before { subject.save }
  describe 'name' do
    it 'name should be present' do
      subject.icon = nil
      expect(subject).to_not be_valiid
    end
    it 'photo should be present' do
      subject.name = nil
      expect(subject).to_not be_valiid
    end
  end
end
