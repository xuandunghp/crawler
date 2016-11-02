class UserCustomizeTag < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  validates :tag, presence: true
end
