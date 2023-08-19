require 'rspec'
require_relative '../src/calculadora'

describe 'Calculadora' do
  calculadora = Calculadora.new
# Soma
  it 'deve somar dois numeros inteiros' do
       expect(calculadora.soma(4, 5)).to eq 9
  end

  it 'deve somar qualquer numero com 0' do
        expect(calculadora.soma(9, 0)).to eq 9
  end

  it 'deve somar qualquer numero negativo' do
        expect(calculadora.soma(-9, -10)).to eq -19
  end
# Subtração
  it 'deve subtrair dois numeros inteiros' do
    expect(calculadora.subtrai(5, 4)).to eq 1
  end
end
