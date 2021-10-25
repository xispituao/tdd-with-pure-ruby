# frozen_string_literal: true

describe 'Test double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Natan', age: 18)
    allow(user).to receive(:password).and_return('secret') # Alias da forma acima porém so recebe uma mensagem por vez
    user.name
    user.password
  end

  # as_null_object ignora qualquer exceção que um double levantar
  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Natan', age: 18)
    allow(user).to receive(:password).and_return('secret') # Alias da forma acima porém so recebe uma mensagem por vez
    user.name
    user.password
    user.abc
  end
end
