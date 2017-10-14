class ArrayUtils
  def self.multiplos(qtd, multiplo)
    $i = 1
    $array = Array::new
    while $i <= qtd do
      $array << $i * multiplo
      $i += 1
    end
    $array
  end

  def self.tabuada(qtd)
    $arrayTabuada = Array::new
    $i = 1
    while $i <= qtd do
      $array = Array::new
      $mult = 1
      while $mult <= 10 do
        $array << $i * $mult
        $mult += 1
      end
      $arrayTabuada << $array
      $i += 1
    end
    $arrayTabuada
  end

  def self.ultimo(array)
    array.last
  end
end
