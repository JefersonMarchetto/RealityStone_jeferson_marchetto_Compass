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

  it 'deve subtrair qualquer numero com 0' do
    expect(calculadora.subtrai(5, 0)).to eq 5
  end

  it 'deve subtrair um numero por ele mesmo' do
    expect(calculadora.subtrai(5, 5)).to eq 0
  end

  # Multiplicação
  it 'deve multiplicar dois numeros inteiros' do
    expect(calculadora.multiplica(3, 4)).to eq 12
  end

  it 'deve multiplicar um numero por 0' do
    expect(calculadora.multiplica(5, 0)).to eq 0
  end

  it 'deve multiplicar um numero por 1' do
    expect(calculadora.multiplica(7, 1)).to eq 7
  end

  # Divisão
  it 'deve dividir dois numeros inteiros' do
    expect(calculadora.divide(10, 2)).to eq 5
  end

  it 'deve dividir um numero por 1' do
    expect(calculadora.divide(9, 1)).to eq 9
  end

  it 'deve retornar mensagem de erro para divisão por zero' do
    expect(calculadora.divide(10, 0)).to eq 'Erro: Divisão por zero!'
  end
   # Potência
  it 'deve elevar um numero a uma potência' do
    expect(calculadora.potencia(2, 3)).to eq 8
  end

  it 'deve elevar um numero a potência 0' do
    expect(calculadora.potencia(5, 0)).to eq 1
  end

  # Radiciação
  it 'deve calcular a raiz quadrada de um numero' do
    expect(calculadora.raiz_quadrada(25)).to eq 5
  end

  it 'deve calcular a raiz quadrada de um numero negativo' do
    expect(calculadora.raiz_quadrada(-9)).to eq 'Erro: Número negativo!'
  end

end
