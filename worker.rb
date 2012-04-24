class DoingIt
  include Sidekiq::Worker

	def initialize
		@name = %w(bob jim carl).sample
	end

  def perform
		10.times do 	
			sleep 1
			puts "#{@name} says - Doing it Boss!"
		end
  end
end
