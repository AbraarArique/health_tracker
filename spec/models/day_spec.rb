require 'rails_helper'

RSpec.describe Day, type: :model do
  it 'should not save day without day' do
    d1 = build(:day, day: nil)
    expect(d1.save).to be false
  end
end
