GAKU Engine Extension HowTo
===========================
There are a few ways to generate an extension for GAKU Engine. The easiest and recommended way is to use the Skeleton.  
Otherwise you can generate a Rails app or start completely from scratch.  
  
Rough instructions for each method follow:

Using the Skeleton
==================
The Skeleton can be found on GitHub at [GAKUEngine/gaku_extension_skeleton](https://www.github.com/GAKUEngine/gaku_extension_skeleton).  

Cloning and Making it Yours
---------------------------
To begin, clone the skeleton. Please do not fork the repository to create a new extension; ONLY fork if you are going to fix or modify the Skeleton extension itself.  
  
After cloning, change the name of the gaku_extension_skeleton.gemspec file to the name of your extension (with .gemspec on the end). Edit your gemspec file and fill in the details. Be sure to add any runtime dependencies here. Development dependencies and tools can be added here, but we recommend you add them to the Gemfile under the development or test groups.
  
We of course want you to release your extension Open Source so others can use it. Create a repo on GitHub, change your origin, push and tell us about your new extension by posting an issue in the gaku_extension_skeleton repo.

* From here skip down to the "Specs/Testing" section.

Creating from Scratch
=====================
It is possible to create an extension without the Skeleton. You could generate a rails extension with ```rails g gaku_my_extension_name``` but this will create a lot of extras which you'll likely want to clean out. We recommend creating your app from scratch, starting with a gemspec and Gemfile and implementing only the pieces you need.  
  
If your extension is a Rails style extension you'll want to include gaku the gaku gem. We recomment pointing at the GitHub repository by adding the following to your gemfile:
```ruby
gem 'gaku', github: 'GAKUEngine/gaku'
```
And these lines to your gemspec:
```ruby
s.add_dependency 'gaku_core',    '~> 0.1.1'
s.add_dependency 'gaku_testing', '~> 0.1.1'
s.add_dependency 'gaku_admin',   '~> 0.1.1'
```
You may not need gaku_admin, but you will likely need gaku_core and gaku_testing.
* From here skip down to the "Specs/Testing" section.

Creating a Non-Rails or Non-Ruby extension
==========================================
It is certainly possible to create an extension that does not use Ruby/Rails, but in order to have your extension easily managed from a GAKU app you'll need a gemspec. If your extension is not built on Ruby and does not utilize Rails like constructs integration could require you build your own bindings.

Running a Separate Process
--------------------------
It will be the common practice of running GAKU Engine apps to use a Procfile and run with a tool like Foreman. If you need to run a separate process we recommend you append your runner command to the Procfile so it will be handled and run by Foreman automatically.

Specs/Testing
=============
We strongly recommend you add tests/specs either before or during development. GAKU Core/GAKU Testing uses rspec for testing, capybara for front end testing, factory girl for test data generation, and a variety of other tools. You are free to use whatever testing frameworks and tools you like, but just know that GAKU Core is using these tools and existing specs you derive from will be based on them.

Base Tests/Test App
-------------------
With gaku_testing installed you have access to the base tests and the test app. Simply make your specs as if you were making them in gaku_core, then run:

    $ bundle exec rake test_app

After that you can run specs as usualy with rspec etc.

Altering and Appending Views
============================
To append to or add to views in GAKU Engine we generally recommend you use [deface](https://github.com/spree/deface). You will need to refer to gaku_frontend to find the tags/views/partials you will want to modify.
