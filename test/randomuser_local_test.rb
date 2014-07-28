require 'test_helper'
require 'minitest/autorun'

describe RandomuserLocal do

  describe '#generate' do

    describe 'with no arguments' do

      let(:user) { RandomuserLocal.generate }

      it 'returns a user hash' do
        user.is_a?(Hash).must_equal true
      end

    end

    describe 'when passed a number' do
      it 'returns an array of user hashes' do
        users = RandomuserLocal.generate(3)
        users.is_a?(Array).must_equal true
        users.count.must_equal 3
        users.first.is_a?(Hash).must_equal true
      end
    end

  end

  describe '#generate_female' do
    let(:user) { RandomuserLocal.generate_female }

    it 'returns a female headshot path' do
      user[:picture].must_match /^\/assets\/randomuser_local\/portraits\/women/
    end
  end


  describe '#generate_male' do
    let(:user) { RandomuserLocal.generate_male }

    it 'returns a male headshot path' do
      user[:picture].must_match /^\/assets\/randomuser_local\/portraits\/men/
    end

  end

end