require('minitest/autorun')
require('minitest/rg')
require_relative('../students.rb')

class StudentTest < MiniTest::Test


  def test_student_name_getter
    student = Student.new('Hugh', 'G12', "Ruby")
    assert_equal('Hugh', student.get_name)
  end

  def test_student_name_setter
    student = Student.new('Hugh', 'G12', "Ruby")
    student.set_name('Dave')
    assert_equal('Dave', student.get_name)

  end

  def test_cohort_getter
    student = Student.new('Hugh', 'G12', "Ruby")
    assert_equal('G12', student.get_cohort)
  end

  def test_cohort_setter
    student = Student.new('Hugh', 'G12', "Ruby")
    student.set_cohort('E4')
    assert_equal('E4', student.get_cohort)
  end

  def test_make_student_talk
    student = Student.new('Hugh', 'G12', "Ruby")
    assert_equal('Hello, I can talk', student.make_student_talk)
  end

  # def test_say_favourite_language
  #   student = Student.new('Hugh', 'G12', "Ruby")
  #   assert_equal("I love Ruby", say_favourite_language("Ruby"))
  # end
  #

 end
