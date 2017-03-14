class Timer

		def format(num)
			sec = (num % 60).to_s
			min = ((num / 60 ) % 60).to_s
			hr = (num / 3600).to_s

			sec = "0"+sec if(sec.to_i<10)
			min = "0"+min if(min.to_i<10)
			hr = "0"+hr if(hr.to_i<10)

			"#{hr}:#{min}:#{sec}"
		end

		def seconds=(sec = "")
			if (sec == "")
				 @time = 0
			else
				@time = format(sec)
			end
		end

		def seconds
			@time = 0
		end

		def time_string
			@time
		end
end

