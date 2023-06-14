require_relative './spec_helper'

describe Classroom do
  describe '>> new classroom' do
    it '>> Create a new object' do
      @classroom = Classroom.new('Label')

      label = @classroom.label

      expect(label).to eq 'Label'
    end

    it '>> Add an student' do
      classroom = Classroom.new('Label')
      student = Student.new('25', 'ruby-101', 'Mohi', parent_permission: true)

      classroom.add_student(student)
      number_of_students = classroom.students.length

      expect(number_of_students).to eq 1
    end
  end
end
