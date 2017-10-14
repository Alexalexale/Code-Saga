class Echo

  def message(mensagem)
    if(mensagem.strip.empty?)
      return "Nada?"
    end
    if mensagem.reverse.start_with?('?')
      return "Só faço echo, não respondo perguntas."
    end
    if(mensagem.scan(/\p{Lower}/).empty?)
      return "Não faço echo de gritos."
    end
    mensagem
  end

end
