class UserCustomizeTag < ApplicationRecord
  belongs_to :user

  validates :tag, presence: true
end
