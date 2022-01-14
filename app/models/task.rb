class Task < ApplicationRecord
  validates :description, :deadline, presence: true
  validates :deadline, comparison: { greater_than: Date.today }
  
  broadcasts_to ->(task) { :tasks }
  
end
