class Calculadora
  def soma(a, b)
    a + b
  end

  def subtrai(a, b)
    a - b
  end

  def multiplica (a, b)
    a * b
  end

  def divide(a, b)
    if b != 0
      a / b
    else
      'Erro: Divisão por zero!'
    end
  end
  def potencia(a, b)
    a ** b
  end

  def raiz_quadrada(numero)
    if numero >= 0
      Math.sqrt(numero)
    else
      'Erro: Número negativo!'
    end
  end
end
