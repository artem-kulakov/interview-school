class Section < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
  belongs_to :classroom
end
