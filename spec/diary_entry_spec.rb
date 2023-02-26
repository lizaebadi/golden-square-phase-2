require 'diary_entry'

<<<<<<< HEAD
RSpec.describe DiaryEntry do 
  it "returns the text of the diary you can read given an amount of time" do 
    diaryentry = DiaryEntry.new("title", "contents")
    expect(diaryentry.title).to eq "title"
    expect(diaryentry.contents).to eq "contents"
  end 

  describe "#count words method" do 
    it "returns the number of words in the contents" do
      diaryentry = DiaryEntry.new("title", "contents that I like")
      expect(diaryentry.count_words).to eq 4
    end 
  end

  describe "#reading time method" do 
    it "returns the number of words per minute" do 
      diaryentry = DiaryEntry.new("title", "one " * 550)
      expect(diaryentry.reading_time(200)).to eq 3
    end
  end  

  describe "#reading chunk method" do 
    it "returns the chunk of text that can be read from the
    contents in the number of minutes " do 
      diaryentry = DiaryEntry.new("title", "a b c d e f g h i")
      expect(diaryentry.reading_chunk(3, 1)).to eq "a b c"
    end

    it "returns the next chunk" do 
      diaryentry = DiaryEntry.new("title", "a b c d e f g h i")
      diaryentry.reading_chunk(3, 1)
      expect(diaryentry.reading_chunk(3, 1)).to eq "d e f"
    end 

    it "restarts after reading everything" do 
      diaryentry = DiaryEntry.new("title", "a b c d e f g h i")
      diaryentry.reading_chunk(3, 1)
      diaryentry.reading_chunk(3, 1)
      diaryentry.reading_chunk(3, 1)
      diaryentry.reading_chunk(3, 1)
      expect(diaryentry.reading_chunk(3, 1)).to eq "a b c"
    end 
  end
end 
=======
RSpec.describe DiaryEntry do
  it 'initializes' do
    diaryentry1 = DiaryEntry.new("name1", "number1", "diary_entry1 blah blah blah")
  end

  it 'counts words in the entry' do 
    diaryentry1 = DiaryEntry.new("name1", "number1", "diary_entry1 blah blah blah")
    expect(diaryentry1.count_words).to eq 4
  end

  it 'returns contact details for the entry' do 
    diaryentry1 = DiaryEntry.new("name1", "number1", "diary_entry1 blah blah blah")
    expect(diaryentry1.contacts).to eq "number1: name1"
  end
end
>>>>>>> e6e26e0629526546b0f5dddfe3e4b27058ebb702
