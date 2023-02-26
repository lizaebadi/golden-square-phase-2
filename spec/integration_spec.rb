require 'diary'
require 'diary_entry'
require 'todo'

RSpec.describe 'integration' do
    it 'returns all diary entries' do
      diary = Diary.new
      diaryentry1 = DiaryEntry.new("name1", "number1", "diary_entry1")
      diaryentry2 = DiaryEntry.new("name2", "number2", "diary_entry2")
      diary.add(diaryentry1)
      diary.add(diaryentry2)
      expect(diary.all_entries).to eq [diaryentry1, diaryentry2]
    end

    it 'returns the diary entries that can be read given time and speed' do
      diary = Diary.new
      diaryentry1 = DiaryEntry.new("name1", "number1", "diary_entry1 blah blah blah")
      diaryentry2 = DiaryEntry.new("name2", "number2", "diary_entry2 blah blah")
      diaryentry3 = DiaryEntry.new("name3", "number3", "diary_entry3 blah blah blah blah")
      diary.add(diaryentry1)
      diary.add(diaryentry2)
      diary.add(diaryentry3)
      expect(diary.reading_chunk(2, 4)).to eq [diaryentry1, diaryentry2]
    end

    it 'returns list of contacts' do 
      diary = Diary.new
      diaryentry1 = DiaryEntry.new("name1", "number1", "diary_entry1 blah blah blah")
      diaryentry2 = DiaryEntry.new("name2", "number2", "diary_entry2 blah blah")
      diaryentry3 = DiaryEntry.new("name3", "number3", "diary_entry3 blah blah blah blah")
      diary.add(diaryentry1)
      diary.add(diaryentry2)
      diary.add(diaryentry3)
      expect(diary.track_contacts).to eq ["number1: name1", "number2: name2", "number3: name3"]
    end 
end