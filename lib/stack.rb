def stack_machine_emulator(s)
	if s.nil? || s.empty?
		puts "Sorry, you didn't enter a value"
	else
		stack = []

		sArr = s.scan(/.{1}/)
		sArr.each do |stack_item|
			# check if stack_item is a digit
			if stack_item =~ /^(\d)+$/
				stack.push( stack_item.to_i )
			else
				stack.push( stack.pop(2).inject( stack_item.to_sym ) )
			end
		end

		puts "#{stack.last}"
	end
end

puts "Enter your stack:"
s = gets.chomp
stack_machine_emulator(s)