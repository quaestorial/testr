require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(description: "something", deadline: Date.tomorrow))
  end

  it "renders attributes in <p>" do
    render
  end
end
