class Todo < ApplicationRecord
  belongs_to :project

  def complete
    self.isCompleted = !self.isCompleted
    save
  end
end
