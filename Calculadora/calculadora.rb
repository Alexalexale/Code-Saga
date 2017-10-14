class Calculadora
  def soma(n1, n2)
    n1 + n2
  end

  def subtracao(n1, n2)
    n1 - n2
  end

  def multiplicacao(n1, n2)
    n1 * n2
  end

  def divisao(n1, n2)
    if n2 == 0
      return 0
    end
    n1 / n2
  end

  def calcular(n1, n2, metodo)
    n1.send(metodo, n2)
  end

end
