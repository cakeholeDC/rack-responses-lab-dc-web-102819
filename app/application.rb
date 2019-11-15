class Application

	def call(env)
			resp = Rack::Response.new

			time = Time.now #.to_i

			if time.hour > 12
				resp.write "Good Afternoon!"
				# resp.write "#{time}"
			else
				resp.write "Good Morning!"
			end

			resp.finish
		end	

end
