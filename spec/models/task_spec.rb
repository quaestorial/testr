require 'rails_helper'

RSpec.describe Task, type: :model do

  it 'requires a description to be valid' do
    task = Task.new description: "Anything", deadline: Date.tomorrow
    expect(task).to be_valid
  end
  
  it 'is invalid without a description' do
    task = Task.new
    expect(task).to be_invalid
  end
  
  it 'requires a deadline to be valid' do
    task = Task.new description: "anything", deadline: Date.tomorrow
    expect(task).to be_valid
  end
  
  it 'is invalid without a deadline' do
    task = Task.new description: "Anything"
    expect(task).to be_invalid    
  end
  
  it 'requires a deadline no earlier than tomorrow to be valid' do
    task = Task.new description: "Anything", deadline: Date.tomorrow
    expect(task).to be_valid
  end
  
  it 'is invalid with a deadline earlier than tomorrow' do
    task = Task.new description: "Anything", deadline: Date.today
    expect(task).to be_invalid
  end

end
