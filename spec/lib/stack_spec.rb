require 'spec_helper'
require 'stack'

describe StackMachine do
	it "checks to see if string is present" do
		stack = StackMachine.new("")
		stack.should_receive(:puts).with("Sorry, you didn't enter a value")
		stack.stack_machine_emulator
	end

	it "should fail if string does not have a digit or + or *" do
		stack = StackMachine.new("123g+45*")
		stack.should_receive(:puts).with(false)
		stack.stack_machine_emulator
	end

	it "should fail if first character is not a digit" do
		stack = StackMachine.new("h34")
		stack.should_receive(:puts).with(false)
		stack.stack_machine_emulator
	end

	it "first 2 characters should be digits and returns topmost value" do
		stack = StackMachine.new("12")
		stack.should_receive(:puts).with("2")
		stack.stack_machine_emulator
	end

	it "should fail if 2 or more consecitive additions" do
		stack = StackMachine.new("123++")
		stack.should_receive(:puts).with(false)
		stack.stack_machine_emulator
	end

	it "should fail if 2 or more consecitive multiplication" do
		stack = StackMachine.new("123**")
		stack.should_receive(:puts).with(false)
		stack.stack_machine_emulator
	end

	it "should fail if string is '11++'" do
		stack = StackMachine.new("11++")
		stack.should_receive(:puts).with(false)
		stack.stack_machine_emulator
	end

	it "should return 76 if string is '13+62*7+*'" do
		stack = StackMachine.new("13+62*7+*")
		stack.should_receive(:puts).with("76")
		stack.stack_machine_emulator
	end
end