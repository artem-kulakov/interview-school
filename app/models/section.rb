class Section < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
  belongs_to :classroom
  has_many :student_sections, dependent: :destroy
  has_many :students, through: :student_sections

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :schedule, presence: true
end
