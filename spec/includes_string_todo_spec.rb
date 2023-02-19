require 'includes_string_todo' 

RSpec.describe "includes_string_todo method" do 
  it "returns true if text includes TODO" do 
    result = includes_string_todo("TODO buy apples")
    expect(result).to eq true 
  end 
  it "returns false if TODO is not in text" do 
    result = includes_string_todo("buy apples")
    expect(result).to eq false 
  end 
  it "throws an error if text is empty" do
    result = includes_string_todo("")
    expect(result).to eq "Empty" 
  end 
  it "throw an error if text is not a string" do 
    result = includes_string_todo(123)
    expect(result).to eq "Invalid text"
  end 
end 

