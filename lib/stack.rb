class StackMachine
	attr_accessor :s

	def initialize(s)
		@s = s
	end

	def stack_machine_emulator
		if @s.nil? || @s.empty?
			puts "Sorry, you didn't enter a value"
		elsif @s =~ /^[\d]{2}[\d+*]*$/ && @s !~ /[\+]{2,}|[\*]{2,}/
			stack = []

			sArr = @s.scan(/.{1}/)
			sArr.each do |stack_item|
				# check if stack_item is a digit
				if stack_item =~ /^(\d)+$/
					stack.push( stack_item.to_i )
				else
					stack.push( stack.pop(2).inject( stack_item.to_sym ) )
				end
			end

			puts "#{stack.last}"
		else
			puts false
		end
	end
end

puts "Enter your stack:"
StackMachine.new( gets.chomp ).stack_machine_emulator