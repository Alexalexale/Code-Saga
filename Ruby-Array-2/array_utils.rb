class ArrayUtils
  def self.compara(lista1, lista2)
      (lista2 - lista1).empty? && (lista1 - lista2).empty? && lista2.count == lista1.count
  end

  def self.divisiveis(num1, num2)
    $divisivelDual = Array::new
    $divisivelNum1 = Array::new
    $divisivelNum2 = Array::new
    $retorno = Array::new
    $i = 1;
    while $i <= 50 do
      if($i % num1 == 0)
        $divisivelNum1 << $i
      end
      if($i % num2 == 0)
        $divisivelNum2 << $i
      end
      if($i % num1 == 0 && $i % num2 == 0)
        $divisivelDual << $i
      end
      $i += 1
    end
    $retorno << $divisivelDual
    $retorno << $divisivelNum1
    $retorno << $divisivelNum2
  end

  def self.soma(lista)
    lista.inject(:+)
  end

  def self.combinar(lista1, lista2)
    $listaRetorno = Array::new
    lista1.each do |var1|
      lista2.each do |var2|
        $listaRetorno << [var1,var2]
      end
    end
    $listaRetorno
  end
end
