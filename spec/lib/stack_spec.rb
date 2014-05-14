require 'spec_helper'
require 'stack'

describe StackMachine do
	it "checks to see if string is present"
	it "should fail if string does not have a digit or + or *"
	it "should fail if first character is not a digit"
	it "first 2 characters should be digits and returns topmost value"
	it "should fail if 2 or more consecitive additions"
	it "should fail if 2 or more consecitive multiplication"
	it "should fail if string is '11++'"
	it "should return 76 if string is '13+62*7+*'"
end