class Student
  #

  def initialize(name, cohort, favourite_language)
    @student_name = name
    @cohort = cohort
    @favourite_language = favourite_language
  end

  def get_name
    return @student_name
  end

  def get_cohort
    return @cohort
  end


  def set_name(name)
    @student_name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def make_student_talk
    return 'Hello, I can talk'
  end

  def say_favourite_language(language)
    return "I love " + language
  end
end
