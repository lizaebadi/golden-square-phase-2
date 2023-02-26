class DiaryEntry
  def initialize(name, number, diary_entry)
    @name = name
    @number = number
    @diary_entry = diary_entry
  end

  def count_words
    return @diary_entry.split(" ").length
  end 

  def contacts
    return "#{@number}: #{@name}"
  end 
end