# frozen_string_literal: true

describe 'Matches predicados' do # Qualquer método que seja predicado no ruby(predica é o ? no final) pode ser retirado o ? do final e adicionar o be_ no inicio
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end

  it 'empty' do
    expect([]).to be_empty
  end

  it 'present' do
    expect(nil).to be_nil
  end
end
