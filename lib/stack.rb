def stack_machine_emulator(s)
	if s.nil? || s.empty?
		puts "Sorry, you didn't enter a value"
	else
		stack = []

		sArr = s.scan(/.{1}/)
		sArr.each do |stack_item|
			stack.push( stack_item )
		end

		puts "you entered #{sArr}"
	end
end

puts "Enter your stack:"
s = gets.chomp
stack_machine_emulator(s)