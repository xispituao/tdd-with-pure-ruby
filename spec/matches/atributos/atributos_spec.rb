# frozen_string_literal: true

require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   puts 'Antes de cada teste deste describe'
  #   @pessoa = Pessoa.new
  # end
  #
  # before(:each) do
  #   puts 'Depois de cada teste deste describe'
  # end

  around(:each) do |teste| # Substitui o before(:each) e o after(:each)
    puts 'Antes de cada teste deste describe'
    @pessoa = Pessoa.new

    teste.run # Roda o teste

    puts 'Depois de cada teste deste describe'
  end

  it 'have_atributes' do
    @pessoa.nome = 'Natan'
    @pessoa.idade = 23

    expect(@pessoa).to have_attributes(nome: 'Natan', idade: 23)
    expect(@pessoa).to have_attributes(nome: a_string_starting_with('N'), idade: a_value >= 20) # a_string_starting_with é um alias de 'start_with' e a_value é um alias de 'be'
  end
end
