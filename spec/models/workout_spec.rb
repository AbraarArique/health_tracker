require 'rails_helper'

RSpec.describe Workout, type: :model do
  it 'should not save workout without name' do
    w1 = build(:workout, name: nil)
    expect(w1.save).to be false
  end

  it 'should not save workout without cal' do
    w1 = build(:workout, cal: nil)
    expect(w1.save).to be false
  end

  it 'should not save workout without day_id' do
    w1 = build(:workout, day_id: nil)
    expect(w1.save).to be false
  end
end
