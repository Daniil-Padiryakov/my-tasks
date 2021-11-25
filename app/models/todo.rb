class Todo < ApplicationRecord
  belongs_to :project

  def complete
    self.isCompleted = true
    save
  end
end
