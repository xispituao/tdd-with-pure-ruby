# frozen_string_literal: true

describe 'Matches de comparacao' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 1
  end

  it '<=' do
    expect(5).to be <= 5
  end

  it '<' do
    expect(5).to be < 6
  end

  it 'be_between inclusive' do
    expect(2).to be_between(2, 7).inclusive
  end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
  end

  it 'match' do
    expect('fulano@com.br').to match(/..@../)
  end

  it 'start with' do # Existem dois alias para ele: starting_with, a_string_starting_with
    expect('fulano de tal').to start_with('fulano')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'start with / falhas agregadas' do # Start with com falhas agregadas block
    aggregate_failures do # A execução desse it não para caso encontre um erro em algum dos expect
      expect('fulano de tal').to start_with('tal')
      expect([1, 2, 3]).to start_with(3)
    end
  end

  it 'start with / falhas agregadas', :aggregate_failures do # Start with com falhas agregadas ja passando no it
    expect('fulano de tal').to start_with('tal')
    expect([1, 2, 3]).to start_with(3)
  end

  it 'end with' do
    expect('fulano de tal').to end_with('tal')
    expect([1, 2, 3]).to end_with(3)
  end
end
