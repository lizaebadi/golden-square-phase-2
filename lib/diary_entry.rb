# redone with Kay's demonstration 

class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    # Returns the contents as a string
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    return words.length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words_read_check = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + words_read_check
    word_list = words[start_from, words_read_check]
    if end_at > count_words
      @furthest_word_read = 0
    else 
      @furthest_word_read = end_at
    end 
    return word_list.join(" ")
  end
 
  private 

  def words
    return @contents.split(" ")
  end 
end
