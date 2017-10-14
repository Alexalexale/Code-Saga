class Quadrados

  @listagemPrimos

  def initialize(num)
    @listagemPrimos = Array::new
    setPrimeirosPrimos(num)
  end

  def diferenca
    quadrado_da_soma - soma_dos_quadrados
  end

  def soma_dos_quadrados
    toQuadrado.inject(:+)
  end

  def quadrado_da_soma
    @listagemPrimos.inject(:+)**2
  end

  def setPrimeirosPrimos(qtd)
    $e = 1
    while(@listagemPrimos.length < qtd) do
      if(isPrimo($e))
        @listagemPrimos << $e
      end
      $e += 1
    end
  end

  def isPrimo(numero)
    $contador = 0
    $i = 1
    while $i <= numero/2 do
      if (numero % $i) == 0
        $contador += 1
      end
      $i += 1
    end
    $contador == 2
  end

  def toQuadrado
    $listaQuadrado = Array::new
    @listagemPrimos.each do |num|
      $listaQuadrado << num**2
    end
    $listaQuadrado
  end

end
