require 'rails_helper'

RSpec.describe Task, type: :model do
  
  let(:task) { Task.new(description: "Anything", notes: "some notes", deadline: Date.tomorrow) }

  it 'requires a description to be valid' do
    expect(task).to be_valid
  end
  
  it 'is invalid without a description' do
    task = Task.new
    expect(task).to be_invalid
  end
  
  it 'requires a deadline to be valid' do
    expect(task).to be_valid
  end
  
  it 'is invalid without a deadline' do
    task.deadline = nil
    expect(task).to be_invalid    
  end
  
  it 'requires a deadline no earlier than tomorrow to be valid' do
    expect(task).to be_valid
  end
  
  it 'is invalid with a deadline earlier than tomorrow' do
    task.deadline = Date.today
    expect(task).to be_invalid
  end

end
