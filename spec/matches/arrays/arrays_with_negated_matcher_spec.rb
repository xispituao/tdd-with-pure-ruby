# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]), 'Array' do
  it '#include' do # Se existe esses dados no array
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
    expect(subject).to exclude(4)
  end

  it { is_expected.to exclude(12) }

  it '#match_array' do # Exatamente o msm array
    expect(subject).to match_array([1, 2, 3])
  end

  it '#contain_exactly' do # Exatamente os dados que tem dentro do array. Não precisa ser na ordem
    expect(subject).to contain_exactly(2, 1, 3)
  end
end

