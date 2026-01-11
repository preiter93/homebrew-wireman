install:
	brew install --build-from-source ./Formula/wireman.rb

version = 0.3.0

download:
	curl -LO https://github.com/preiter93/wireman/releases/download/v$(version)/wireman-$(version)-aarch64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/wireman/releases/download/v$(version)/wireman-$(version)-x86_64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/wireman/releases/download/v$(version)/wireman-$(version)-aarch64-unknown-linux-gnu.tar.gz
	curl -LO https://github.com/preiter93/wireman/releases/download/v$(version)/wireman-$(version)-x86_64-unknown-linux-gnu.tar.gz
	mv wireman-* bin/.

shasum:
	shasum -a 256 bin/wireman-$(version)-aarch64-apple-darwin.tar.gz
	shasum -a 256 bin/wireman-$(version)-x86_64-apple-darwin.tar.gz
	shasum -a 256 bin/wireman-$(version)-aarch64-unknown-linux-gnu.tar.gz
	shasum -a 256 bin/wireman-$(version)-x86_64-unknown-linux-gnu.tar.gz
