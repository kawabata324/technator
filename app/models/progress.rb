class Progress < ApplicationRecord
  belongs_to :game
  belongs_to :question

  enum answer: { positive: 0, negative: 1, unknown: 2 }

  validates :answer, inclusion: { in: Progress.answers.keys }

  def assign_sequence
    next_sequence = 1
    # game_idが存在している時のみ処理を実行する
    #
    if game.present?
      all_progress = game.progresses
      if all_progress.count > 0
        next_sequence = all_progress.length
      end
    end
    self.sequence = next_sequence
  end
end
