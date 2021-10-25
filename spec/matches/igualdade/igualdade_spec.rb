# frozen_string_literal: true

describe 'Matchers de comparacao' do
  it '#equal' do # Compara classes
    x = 'ruby'
    y = 'ruby'
    expect(x).to equal(y)
  end

  it '#be' do # Alias do equal
    x = 'ruby'
    y = 'ruby'
    expect(x).to be(y)
  end

  it '#eql' do # Compara valores
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end

  it '#eq' do # Alias do eql
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end
