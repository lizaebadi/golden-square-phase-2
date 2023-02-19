def improve_grammar(text)
  capital_letter = ('A'..'Z').include?(text[0])
  punctuation = ['.', '?', '!'].include?(text[-1]) 
  if punctuation && capital_letter
    return true
  else
    return false
  end
end