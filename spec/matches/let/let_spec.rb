$count = 0

describe 'let' do
  let(:count) { $count += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1) # Primeira vez é carregado
    expect(count).to eq(1) # Segunda vez tá em cache
  end

  it 'Não é cacheado entre os testes' do
    expect(count).to eq(2) # Primeira/Terceira vez é carregado
  end
end
