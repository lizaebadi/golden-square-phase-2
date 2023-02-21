require 'grammar_stats'

RSpec.describe GrammarStats do 
  it "returns true if text starts with capital letter and ends with a punctuation" do
    grammar_stats = GrammarStats.new
    expect( grammar_stats.check("Hello.") ).to eq true 
  end

  it "returns false if text does not end with a punctuation" do 
    grammar_stats = GrammarStats.new
    expect( grammar_stats.check("Hello") ).to eq false
  end 

  it "returns false if text does not start with capital letter" do 
    grammar_stats = GrammarStats.new
    expect( grammar_stats.check("hello.") ).to eq false
  end

  it "returns the percentage that passed as a number" do 
    grammar_stats = GrammarStats.new 
    grammar_stats.check("Hello.")
    grammar_stats.check("Hello")
    grammar_stats.check("Bye.")
    grammar_stats.check("Bye")
    expect( grammar_stats.percentage_good ).to eq 50 
  end 
end 

