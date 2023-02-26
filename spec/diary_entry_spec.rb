require 'diary_entry'

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