class Task < ApplicationRecord
  validates :description, :deadline, presence: true
  validates :deadline, comparison: { greater_than: Date.today, message: "must be in the future" }
  
  broadcasts_to ->(task) { :tasks }
  
end
