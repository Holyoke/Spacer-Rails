## Continued Development

The `master` branch is the result of 3 hours, this is the branch where I pursue developing the main feature of correctly formatting period spacing. This branch's solution iterates through each char and tries to determine whether to add a space or not.

```ruby
def correct_text
	self.converted_text = ""
	self.corrections = ""

	body.each_char.with_index do |char, x|
		if char == "."
			check_period(x)
		else
			self.converted_text += char
			self.corrections += char
		end
	end

	nil
end

def check_period(x)
	#check if the period is the last place
	if x == (self.body.size - 1)
		self.converted_text += "."
		self.corrections += "."
	#check if char after period is not a space
	elsif self.body[x + 1] != " " 
		self.converted_text += ". "
		self.corrections += "<mark>.</mark>"
	end

	nil
end
```

After I got it to pass `message_spec`, I decided to branch off and pursue an implemention using `#split`. 