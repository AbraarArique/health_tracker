require 'rails_helper'

RSpec.describe Meal, type: :model do
  it 'should not save meal without name' do
    m1 = build(:meal, name: nil)
    expect(m1.save).to be false
  end

  it 'should not save meal without cal' do
    m1 = build(:meal, cal: nil)
    expect(m1.save).to be false
  end

  it 'should not save meal without day_id' do
    m1 = build(:meal, day_id: nil)
    expect(m1.save).to be false
  end
end
