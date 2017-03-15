class RPNCalculator
  # TODO: your code goes here!

  def initialize
  	@container = []
  end

  def push(num)
  	@container.push(num)
  end

  def plus
    @container.length > 1 ? @container.push(@container.pop(2).reduce(:+) ) : fail
  end

  def minus
    @container.length > 1 ? @container.push(@container.pop(2).reduce(:-) ) : fail
  end  

  def divide
    @container.length > 1 ? @container.push(@container.pop(2).inject{|x,y| x.to_f / y} ) : fail
  end

  def times
   @container.length > 1 ? @container.push(@container.pop(2).reduce(:*) ) : fail
  end

  def value
    @value = @container[-1]
  end

  def tokens(pol)
    pol.split(' ').map{|n| n.to_i.to_s == n ? n.to_i : n.to_sym}
  end

 def evaluate(pol)
		expression = pol.split
		operands = []
		evaluation = []

		expression.each do |x|
			case x
				when /\d/
					evaluation.push(x.to_f)
				when "-", "/", "*", "+", "**"
					operands = evaluation.pop(2)
					evaluation.push(operands[0].send(x, operands[1]))
			end
		end
		evaluation.pop
		
	end

  def fail
    begin
      raise Exception.new("calculator is empty")
    end
  end

end
