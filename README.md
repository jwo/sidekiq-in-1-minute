Sidekiq in 1 minute
===================

1 Minute Sidekiq lighting code -- railsconf2012

A simple example Sidekiq install in ruby only

Steps (after you clone and bundle)
----------------------------------

1. Run the sidekiq worker

```
bundle exec sidekiq
```

2. Run the code

```
ruby demo
```

On Your Own
-----------

```
# In your code
DoingIt.perform_async

# The worker
class DoingIt
  include Sidekiq::Worker
	def perform
		puts "the stuff"
	end
end
```

In Rails 3
---------

1. Add to bundler
2. Add to capistrano

```
require 'sidekiq/capistrano'
```

Prereqs
-------

1. Have Redis installed and running (`brew install redis`)
2. Ruby 1.9 
