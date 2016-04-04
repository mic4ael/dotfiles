install: check_ruby check_rake
	@rake install

check_ruby:
	@which ruby > /dev/null || error "No ruby installed. Cannot proceed"

check_rake:
	@which rake > /dev/null || error "No rake installed. Cannot proceed"

clean:
	unlink ~/.dotfiles
