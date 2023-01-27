require 'todo_list'

RSpec.describe TodoList do
    context "initializes" do
    it "constructs" do
        todo = TodoList.new
        expect(todo.complete()).to eq []
    end
  end
end