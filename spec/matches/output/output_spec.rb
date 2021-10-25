# frozen_string_literal: true

describe 'Matcher output' do
  # Foi usado print no comeco ao ives do puts por q o puts adiciona um \n no final do texto
  it { expect { print('Natanael') }.to output.to_stdout } # Se algo foi printado
  it { expect { print('Natanael') }.to output('Natanael').to_stdout } # Se 'natanael' foi printado
  it { expect { puts('Natanael') }.to output(/Natanael/).to_stdout } # Se 'natanael' foi printado. Usando

  it { expect { warn('Natanael') }.to output.to_stderr } # Se algo foi printado na área de erro
  it { expect { warn('Natanael') }.to output("Natanael\n").to_stderr } # Se 'natanael' foi printado na área de erro
  it { expect { warn('Natanael') }.to output(/Natanael/).to_stderr } # Se 'natanael' foi printado na área de erro. Usando regex
end
