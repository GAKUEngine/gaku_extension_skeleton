[![Build Status](https://travis-ci.org/GAKUEngine/gaku_extension_skeleton.png)](https://travis-ci.org/GAKUEngine/gaku_extension_skeleton)


gaku_extension_skeleton
=======================

Sample GAKUEngine extension


### Install

Add 'skeleton' to your `Gemfile` :

```ruby
gem 'gaku', github: 'GAKUEngine/gaku'
gem 'gaku_extension_skeleton', github: 'GAKUEngine/gaku_extension_skeleton'
```

Install the dependencies:

    $ bundle install

Run the 'skeleton' install generator:

    $ rails g gaku_extension_skeleton:install

Test to make sure installation was successfull:

    $ rails s


### Tests

Prepare the test app: 

    $ rake test_app

Run specs: 

    $ rspec
