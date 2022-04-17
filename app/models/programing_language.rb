class ProgramingLanguage < ApplicationRecord
  enum lang_type: { '静的型付け': 0, '動的型付け': 1 }

  validates :lang_type, inclusion: { in: ProgramingLanguage.lang_types.keys }
end
