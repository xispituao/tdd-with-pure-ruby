# frozen_string_literal: true

require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }

  it 'have_atributes' do
    pessoa.nome = 'Natan'
    pessoa.idade = 23

    expect(pessoa).to have_attributes(nome: 'Natan', idade: 23)
    expect(pessoa).to have_attributes(nome: a_string_starting_with('N'), idade: a_value >= 20) # a_string_starting_with é um alias de 'start_with' e a_value é um alias de 'be'
  end

  it 'have_atributes' do
    pessoa.nome = 'Natalia'
    pessoa.idade = 25

    expect(pessoa).to have_attributes(nome: 'Natalia', idade: 25)
    expect(pessoa).to have_attributes(nome: a_string_starting_with('N'), idade: a_value >= 20) # a_string_starting_with é um alias de 'start_with' e a_value é um alias de 'be'
  end
end
