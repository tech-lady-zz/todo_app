class Todo < ApplicationRecord
  belongs_to :user

  validates :task, presence: true,
                    length: { minimum: 3 }

end
