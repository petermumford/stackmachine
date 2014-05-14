class StackMachine
	attr_accessor :s

	def initialize(s)
		@s = s
	end

	def stack_machine_emulator
		# Check to make sure we have a value present
		if @s.nil? || @s.empty?
			puts "Sorry, you didn't enter a value"
		# Check to make sure:
		# 1. the first 2 characters in the string are digits
		# 2. the string can only contain digits or + or *
		# 3. the string can't have 2 consecutive additions or multiplcations
		elsif @s =~ /^[\d]{2}[\d+*]*$/ && @s !~ /[\+]{2,}|[\*]{2,}/
			# Create empty stack array
			stack = []
			# splits every character in the string into an array
			sArr = @s.scan(/.{1}/)
			sArr.each do |stack_item|
				# check if stack_item is a digit as the item is a string
				if stack_item =~ /^(\d)+$/
					# push stack_item to the stack array and convert to integer
					stack.push( stack_item.to_i )
				else
					# else take the last 2 items from the stack array and calculate them by the symbol
					# either + or *
					stack.push( stack.pop(2).inject( stack_item.to_sym ) )
				end
			end
			# output the last value in the stack array
			puts "#{stack.last}"
		else
			puts false
		end
	end
end

# starts here
puts "Enter your stack:"
StackMachine.new( gets.chomp ).stack_machine_emulator