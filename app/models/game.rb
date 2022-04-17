class Game < ApplicationRecord
  has_many :progresses

  enum status: { finish: 0, in_progress: 1 }
  enum result: { correct: 0, in_correct: 1 }
  validates :status, inclusion: { in: Game.statuses.keys }
  validates :result, inclusion: { in: Game.results.keys }
end
