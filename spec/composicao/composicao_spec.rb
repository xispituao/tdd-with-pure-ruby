# frozen_string_literal: true

describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruta_module).to eq('banana').or eq('laranja').or eq('uva') }

  def fruta_arbitrario # helper method arbitrário. Não é bom por q pode poluir o teste
    %w(banana laranja uva).sample
  end
end
