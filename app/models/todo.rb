class Todo < ApplicationRecord

  validates :title,
            :content,
            presence: true,
            length: { minimum: 3 }

end
