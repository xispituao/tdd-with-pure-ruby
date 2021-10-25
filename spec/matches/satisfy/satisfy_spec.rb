# frozen_string_literal: true

describe 'satisfy' do
  it { expect(10).to(satisfy { |x| (x % 2).zero? }) }
  it {
    expect(9).to satisfy('be a multiple of 3') do |x|
      (x % 3).zero?
    end
  }
end
