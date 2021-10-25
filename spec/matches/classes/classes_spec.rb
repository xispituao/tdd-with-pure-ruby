# frozen_string_literal: true

require 'string_nao_vazia'

describe 'Matches de classes' do
  it 'be_instance_of' do # Exatamente o tipo da classe
    str = StringNaoVazia.new
    expect(str).to be_instance_of(StringNaoVazia)
  end

  it 'be_kind_of' do # Pode ser por herança
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
  end

  it 'respond_to' do # Se o objeto responde a um método especifico
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end

  it 'be_a / be_an' do # Alias de be_kind_of
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)
  end
end
