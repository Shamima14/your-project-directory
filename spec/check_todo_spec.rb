require 'check_todo'

RSpec.describe "check_todo method" do
    context "returns string when given text including #TODO" do
    it "returns string including #TODO"
    result = check_todo("#TODO water the plants.")
    expect(result).to eq "#TODO water the plants."
end
end 