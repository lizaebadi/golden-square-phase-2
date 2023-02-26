class Diary
  def initialize
    @diary_entries = []
    @furthest_word_read = 0
  end

  def add(entry)
    @diary_entries << entry
  end

  def all_entries
    return @diary_entries
  end

  def reading_chunk(wpm, minutes) 
    words_read_check = wpm * minutes
    @count = 0 
    @word_list = []
    @diary_entries.each do |x| 
      check_words = x.count_words
      @count += check_words
        if @count <= words_read_check
          @word_list << x
        else 
          return @word_list
        end 
    end
  end 


  def track_contacts
    @list_contacts = []
    @diary_entries.each do |x| 
      @list_contacts << x.contacts
    end 
    return @list_contacts
  end

end