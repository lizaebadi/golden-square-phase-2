def includes_string_todo(text)
  if text == ("")
    return "Empty"
  elsif !text.is_a? String
    return "Invalid text"
  elsif text.include? "TODO"
    return true 
  else
    return false
  end 
end