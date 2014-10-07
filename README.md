# MatchWith

 This gem internally used https://github.com/andrewberls/regularity 
 
 In regularity API is like 
 
   `Regularity.new
     .start_with(3, :digits)
     .then('-')
     .then(2, :letters)
     .maybe('#')
     .one_of(['a','b'])
     .between([2,4], 'a')
     .end_with('$')`
    
 it will generate `/^[0-9]{3}-[A-Za-z]{2}#?[a|b]a{2,4}\$$/`
 
 But if you want to match this Regex to string means you have to call 
 
 `if "string"[Regularity.new.one_of(['a','b']).regex]`
 
 Here, 

 `if "string".match_with.one_of(['a','b']).result` 
 
 It is more clear.

## Installation

Add this line to your application's Gemfile:

    gem 'match_with'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install match_with

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/match_with/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
