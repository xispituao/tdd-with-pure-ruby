# frozen_string_literal: true

require 'pessoa'

shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento}!")
  end
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  # Para invocar o shared_examples pode ser via 'include_examples', 'it_behaves_like' ou 'it_should_behave_like'
  # Todos são alias de 'include_examples'. Serve para melhorar a leitura os alias
  # O 'include examples' não adiciona mensagem no console na hora do teste. Ja o 'it_behaves_like' e o 'it_should_behave_like' adicionam
  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :contente

  # Substituidos pelo shared_examples
  # it 'feliz' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq('Sentindo-se feliz!')
  # end
  #
  # it 'triste' do
  #   pessoa.triste!
  #   expect(pessoa.status).to eq('Sentindo-se triste!')
  # end
  #
  # it 'contente' do
  #   pessoa.contente!
  #   expect(pessoa.status).to eq('Sentindo-se contente!')
  # end
end
