class DoingIt
  include Sidekiq::Worker

  def perform(name)
		10.times do 	
			sleep 1
			puts "#{name} says - Doing it Boss!"
		end
  end
end
