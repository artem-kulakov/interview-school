class Section < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
  belongs_to :classroom
  has_many :student_sections, dependent: :destroy
  has_many :students, through: :student_sections

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :schedule, presence: true

  validate :validate_overlap

  def validate_overlap

  end

  def overlap?(another_section)
    sql = "select * from sections where sections.schedule = #{another_section.schedule} and (time(sections.start_time) between #{another_section.start_time} and #{another_section.end_time}) or (sections.end_time between #{another_section.end_time} and #{another_section.start_time}"
    Rails.connection.execute(sql)

    schedule == another_section.schedule && (
      start_time.to_time > another_section.start_time.to_time && start_time.to_time < another_section.end_time
    ) || (
      end_time.to_time < another_section.end_time.to_time && end_time.to_time > another_section.start_time.to_time
    )
  end
end
