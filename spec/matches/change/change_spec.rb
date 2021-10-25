# frozen_string_literal: true

require 'contador'

describe 'Matcher change' do
  it { expect { Contador.incrementa }.to(change { Contador.qtd }) } # Qualquer mudança
  it { expect { Contador.incrementa }.to(change { Contador.qtd }.by(1)) } # Em 1
  it { expect { Contador.incrementa }.to(change { Contador.qtd }.from(2).to(3)) } # Mudar de 2 para 3
end
