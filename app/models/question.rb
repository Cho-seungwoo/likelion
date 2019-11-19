class Question < ApplicationRecord
  belongs_to :identity
  has_many :answers
end
