# frozen_string_literal: true

require 'student'
require 'course'

describe 'Stub' do
  # Argumento estático
  it '#has_finished' do
    # O stub serve para forçar que um determinado método de um objeto responda de forma especifica
    student = Student.new
    course = Course.new

    # Mesmo o método has_finished não ter sido implementado(existe mas não tem nada dentro) quando chamado é retornado true
    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true) # Stub

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  # Argumento dinâmico
  it 'Argumentos dinâmicos' do
    student = Student.new
    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        'olá'
      elsif arg == :hi
        'Hi!!!'
      end
    end

    expect(student.foo(:hello)).to eq('olá')
    expect(student.foo(:hi)).to eq('Hi!!!')
  end

  it 'Qualquer instância de classe' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Erros' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect { student.bar }.to raise_error(RuntimeError)
  end
end
