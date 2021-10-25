# frozen_string_literal: true

require 'student'
require 'course'

describe 'Mocks' do
  # Argumento estático
  it '#bar' do
    # setup
    student = Student.new

    # Verify
    expect(student).to receive(:bar) # Significa que estou esperando o método bar ser chamado

    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repeticao' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    expect(student.foo(123)).to be_truthy
  end
end
