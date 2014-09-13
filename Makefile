all: .meteor parse

parse:
	bailey ./ ./ --bare

run: parse
	meteor

.meteor:
	meteor create m > /dev/null
	cp -R m/.meteor .meteor/
	meteor reset
	meteor update
	rm -rf m

.PHONY: parse
