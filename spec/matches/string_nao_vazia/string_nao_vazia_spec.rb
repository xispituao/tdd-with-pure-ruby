require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it 'Não deve está vazia' do
      expect(subject).to eq('Não estou vazio')
    end
  end
end
