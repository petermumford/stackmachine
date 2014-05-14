def stack_machine_emulator(s)
	if s.nil? || s.empty?
		puts "Sorry, you didn't enter a value"
	else
		stack = []
		previous = ''

		sArr = s.scan(/.{1}/)
		sArr.each do |stack_item|
			if previous =~ /[+*]/ && previous.eql?(stack_item)
				puts false
			else
				# check if stack_item is a digit
				if stack_item =~ /^(\d)+$/
					stack.push( stack_item.to_i )
				else
					stack.push( stack.pop(2).inject( stack_item.to_sym ) )
				end
			end
			previous = stack_item
		end

		puts "#{stack.last}"
	end
end

puts "Enter your stack:"
s = gets.chomp
stack_machine_emulator(s)