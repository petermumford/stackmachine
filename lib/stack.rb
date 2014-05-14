def stack_machine_emulator(s)
	if s.nil? || s.empty?
		puts "Sorry, you didn't enter a value"
	else
		puts "you entered #{s}"
	end
end

puts "Enter your stack:"
s = gets.chomp
stack_machine_emulator(s)