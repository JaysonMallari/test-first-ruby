class Temperature
  # TODO: your code goes here!
  	def initialize(hash_option = {})
  		@h_option = hash_option
  	end

  	def in_celsius
  			@h_option.key?(:c) ? @h_option[:c] : (@h_option[:f] - 32) * 5/9.0
  	end

  	def in_fahrenheit
  			@h_option.key?(:f) ? @h_option[:f] : @h_option[:c] *(9/5.0) + 32
  	end

  	def self.from_celsius(num)
  		self.new(:c => num )
  	end

  	def self.from_fahrenheit(num)
  		self.new(:f => num )
  	end


end


class Celsius < Temperature
    
    def initialize(num, hash_option = {})
        @h_option = hash_option
        @h_option[:c] = num
    end

end

class Fahrenheit < Temperature
    
    def initialize(num, hash_option = {})
        @h_option = hash_option
        @h_option[:f] = num
    end


end