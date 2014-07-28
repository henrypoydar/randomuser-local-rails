require "randomuser_local/engine"

module RandomuserLocal

  def self.generate(number=1)
    generate_users(number)
  end

  def self.generate_female(number=1)
    generate_users(number, 'female')
  end

  def self.generate_male(number=1)
    generate_users(number, 'male')
  end

private

  def self.generate_users(number, gender=nil)
    res = []
    number.times { res << generate_user(gender) }
    number == 1 ? res.first : res
  end

  def self.generate_user(gender)
    user = {}
    gender = %w(female male).shuffle.first if gender.nil?
    user[:gender] = gender
    if gender == 'female'
      user[:picture] = "/assets/randomuser_local/portraits/women/#{rand(0..95)}.jpg"
    else
      user[:picture] = "/assets/randomuser_local/portraits/men/#{rand(0..99)}.jpg"
    end
    user
  end

  def self.random_user_element(element)
  end

end
