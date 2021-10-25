# frozen_string_literal: true

describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(1)
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(6, 0)
  end

  # is_expected é o alias do expect(subject). E da pra colocar o it inline com os {}
  it { is_expected.to cover(2) }
  it { is_expected.to cover(2, 5) }
  it { is_expected.not_to cover(0, 6) }
end
