class Game < ApplicationRecord
  enum status: { finish: 0, in_progress: 1 }
  validates :status, inclusion: { in: Game.statuses.keys }
end
