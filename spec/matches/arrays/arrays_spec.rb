# frozen_string_literal: true

describe Array.new([1, 2, 3]), 'Array', type: 'collection' do
  it '#include' do # Se existe esses dados no array
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
    expect(subject).to include(3, 2, 1)
  end

  it '#match_array' do # Exatamente o msm array
    expect(subject).to match_array([1, 2, 3])
  end

  it '#contain_exactly', slow: true do # Exatamente os dados que tem dentro do array. Não precisa ser na ordem
    expect(subject).to contain_exactly(2, 1, 3)
  end
end
