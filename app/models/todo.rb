class Todo < ApplicationRecord
  enum status: { incomplete: 0, complete: 1 }
  
  validates :title, presence: true
end
