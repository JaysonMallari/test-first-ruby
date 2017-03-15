class Array
  
  def sum
  	total = 0
  		self.each { |x| total += x }
  total
  end

  def square
  	return [] if self.empty?
  	new = []
  		self.each { |x| new.push(x*x) }
 	new
  end

  def square!
 	map! { |x| x * x }
  end

  def array(arr)
  	new = []
  	self.each { |x| new.push(x*x) }
  	@square = new
  end

end

