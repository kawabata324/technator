class Progress < ApplicationRecord
  belongs_to :game
  belongs_to :question

  enum answer: { positive: 0, negative: 1, unknown: 2 }

  validates :answer, inclusion: { in: Progress.answers.keys }
end
