# frozen_string_literal: true

require 'calculator'

describe Calculator, 'Sobre a calculadora' do
  subject(:calc) { described_class.new }

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end

    it 'with negative and positive numbers' do
      result = calc.sum(-5, 7)
      expect(result).to eq(2)
    end
  end

  context '#div' do # Exceções
    # OBS - Quando for para cpaturar errors deve ser colocado o fluxo dentro do bloco do expect {}
    it 'divide by 0 generic' do
      expect { calc.div(3, 0) }.to raise_exception
    end

    it 'divide by 0 specific' do
      expect { calc.div(3, 0) }.to raise_error(ZeroDivisionError) # Pela classe
      expect { calc.div(3, 0) }.to raise_error('divided by 0') # Pela descrição da exceção
      expect { calc.div(3, 0) }.to raise_error(ZeroDivisionError, 'divided by 0') # Pelos dois
      expect { calc.div(3, 0) }.to raise_error(/divided/) # Descrição da exceção bate com a expressão regular
    end
  end
end
