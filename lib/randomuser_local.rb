require "randomuser_local/version"
require "randomuser_local/engine" if defined?(::Rails)

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
    user[:name], user[:location] = {}, {}
    gender = %w(female male).shuffle.first if gender.nil?
    user[:gender] = gender
    if gender == 'female'
      user[:picture] = "randomuser_local/portraits/women/#{rand(0..95)}.jpg"
      user[:name][:first] = random_user_element('female_first_names')
      user[:name][:title] = %w(ms mrs).shuffle.first
    else
      user[:picture] = "randomuser_local/portraits/men/#{rand(0..99)}.jpg"
      user[:name][:first] = random_user_element('male_first_names')
      user[:name][:title] = 'mr'
    end
    user[:name][:last] = random_user_element('last_names')
    user[:location][:street] = "#{rand(10000)} #{random_user_element('street_names')}"
    user[:location][:city] = random_user_element('city_names')
    user[:location][:state] = random_user_element('states')
    user[:location][:zip] = rand(10000..99999).to_s
    user[:email] = "#{user[:name][:first]}.#{user[:name][:last]}#{rand(99)}@example.com"
    user[:username] = "#{random_user_element('username_part_1')}#{random_user_element('username_part_1')}#{rand(99)}"
    user[:password] = random_user_element('passwords')
    user[:phone] = "(#{rand(200..600)}) #{rand(100..999)}-#{rand(1000..9999)}"
    user[:cell] = "(#{rand(200..600)}) #{rand(100..999)}-#{rand(1000..9999)}"
    user[:ssn] = "#{rand(100..900)}-#{rand(10..99)}-#{rand(1000..9999)}"
    user
  end

  def self.random_user_element(element)
    prefix = element =~ /^password|^username/ ? 'general' : 'US'
    f = File.expand_path("../randomuser_local/data/#{prefix}/#{element}.txt", __FILE__)
    IO.readlines(f).shuffle.first.chomp
  end

end
