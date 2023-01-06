require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(13, 'Masters', 'KanzaKanzaKanza', parent_permission: true)
    @classroom = Classroom.new('Bachelors')
  end

  context 'When testing a Student class' do
    it 'takes four parameters and returns a Student object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'should return the correct classroom = Masters' do
      expect(@student.classroom).to eql 'Masters'
    end
  end

  context 'When using play_hooky method' do
    it 'should return a string ¯¯\\(ツ)/¯' do
      expect(@student.play_hooky).to eql '¯\\(ツ)/¯'
    end
  end

  context 'When using classroom method' do
    it 'should assign student to a classroom' do
      @student.classroom = @classroom
      expect(@student.classroom).to eql @classroom
    end
  end

  context 'Convert Student object to JSON' do
    it 'should check json string' do
      json_obj = @student.to_json.to_s
      # rubocop:disable Layout/LineLength
      json_str = '{"json_class":"Student","age":13,"classroom":"Masters","name":"KanzaKanzaKanza","parent_permission":true}'
      # rubocop:enable Layout/LineLength
      expect(json_obj).to eq json_str
    end
  end

  context 'Create an object from JSON' do
    it 'should check json string' do
      @student = JSON.parse(
        '{"json_class":"Student","age":13,"classroom":"Masters","name":"KanzaKanzaKanza","parent_permission":true}',
        create_additions: true
      )
      expect(@student).to be_an_instance_of Student
    end
  end
end
