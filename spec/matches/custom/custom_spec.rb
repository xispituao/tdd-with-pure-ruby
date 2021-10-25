# frozen_string_literal: true

RSpec::Matchers.define :be_a_multiple_of do |expected|
  # expected nesse caso sera 3
  # actual é o subject(is_expected). Nesse caso o 18
  match do |actual|
    (actual % expected).zero?
  end

  # o failure_message customiza a mensagem de erro caso o teste falhe
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end

  # descrição do teste. Aparece no console ao executar o teste
  description do
    "be a multiple of #{expected}"
  end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
end
