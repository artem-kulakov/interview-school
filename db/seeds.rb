# Rails.logger = Logger.new(STDOUT)
# Rake::Task['db:fixtures:load'].invoke

# Teachers
teacher_1 = Teacher.create(first_name: 'Tom', last_name: 'White')
teacher_2 = Teacher.create(first_name: 'Jane', last_name: 'Green')

# Subjects
subject_1 = teacher_1.subjects.create(name: 'Math')
subject_2 = teacher_2.subjects.create(name: 'English')

# Classrooms
classroom_1 = Classroom.create(name: 'London')
classroom_2 = Classroom.create(name: 'Paris')

# # Students
student_1 = Student.create(name: 'John')
student_2 = Student.create(name: 'Mary')

# # Sections
section_1 = student_1.sections.create(
	start_time: DateTime.new(2021,8,2, 7,30),
	end_time: DateTime.new(2021,8,2, 8,20),
	schedule: 'MWF',
	subject: subject_1,
	teacher: teacher_1,
	classroom: classroom_1
)
section_2 = student_2.sections.create(
	start_time: DateTime.new(2021,8,2, 7,30),
	end_time: DateTime.new(2021,8,2, 8,20),
	schedule: 'MWF',
	subject: subject_2,
	teacher: teacher_2,
	classroom: classroom_2
)
