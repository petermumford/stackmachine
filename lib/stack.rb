def stack_machine_emulator(s)
	if s.nil? || s.empty?
		puts "Sorry, you didn't enter a value"
	else
		sArr = s.scan(/.{1}/)
		puts "you entered #{sArr}"
	end
end

puts "Enter your stack:"
s = gets.chomp
stack_machine_emulator(s)