require "rubygems"
require "bundler/setup"
require "sidekiq"
require_relative "worker"

class YourStuff

	def initialize
		@name = %w(bob jim carl).sample
	end

	def just_do_it
		puts "#{Time.now} - START"
		DoingIt.perform_async(@name)
		puts "#{Time.now} - END"
	end

end

10.times {YourStuff.new.just_do_it}
