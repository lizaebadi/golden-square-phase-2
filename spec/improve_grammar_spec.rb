require 'improve_grammar' 

RSpec.describe 'improve_grammar' do 
  it "should return true if the word starts with uppercase letter and a punctuation at the end" do 
    result = improve_grammar("Hello world!")
    expect(result).to eq true 
  end
  it "should return false as there is no capital letter" do 
    result = improve_grammar("hello world.")
    expect(result).to eq false
  end 
  it "should return false as there is no punctuation at the end" do
    result = improve_grammar("Hello world")
    expect(result).to eq false
  end
end