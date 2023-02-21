class GrammarStats
  def initialize
    # ...
    @num_true = 0 
    @count_checks = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    @count_checks += 1
    @text = text
    capital_letter = ('A'..'Z').include?(@text[0])
    punctuation = ['.', '?', '!'].include?(@text[-1]) 
    if punctuation && capital_letter
      @num_true += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    percentage = ( @num_true.to_f / @count_checks ) * 100 
    return percentage.to_i
  end
end