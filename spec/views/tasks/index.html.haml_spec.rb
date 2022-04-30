require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(description: "something", deadline: Date.tomorrow),
      Task.create!(description: "anything", deadline: Date.tomorrow)
    ])
  end

  it "renders a list of tasks" do
    render
  end
end
