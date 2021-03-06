# Random User / Local

I love the API at http://api.randomuser.me. However for some offline demos in some Rails apps I needed a local cache. This Rails plugin provides a local version of some of the data (basic US male and female profiles) generated by external calls to the API.

Uses the US data here: https://github.com/RandomAPI/Randomuser.me-Data

## Installation

Add this line to your application's Gemfile:

    gem 'randomuser-local-rails', require: 'randomuser_local'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randomuser-local

## Usage

Grab a single random user, returned as a hash:

    RandomuserLocal.generate

Multiple random users:

    RandomuserLocal.generate(5)

A single female random user:

    RandomuserLocal.generate_female

Multiple female random users:

    RandomuserLocal.generate_female(5)

A single male random user:

    RandomuserLocal.generate_male

Multiple male random users:

    RandomuserLocal.generate_male(5)

## Contributing

1. Fork it ( https://github.com/hpoydar/randomuser-local-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

* Random API copyright notice: http://randomuser.me/copyright.html
* All randomly generated photos are copyrighted under a [Creative Commons BY-NC-SA 2.0 license](http://creativecommons.org/licenses/by-nc-sa/2.0/deed.en). These photos were picked by the Random API team from [Greg Peverill-Conti's 1,000 faces project](http://www.flickr.com/photos/gregpc/).
* This gem is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
