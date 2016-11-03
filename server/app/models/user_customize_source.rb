class UserCustomizeSource < ApplicationRecord
  belongs_to :user

  validates :source_id, presence: true
end
