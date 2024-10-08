install:
	brew install --build-from-source ./Formula/wireman.rb

download:
	curl -LO https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-aarch64-unknown-linux-gnu.tar.gz
	curl -LO https://github.com/preiter93/wireman/releases/download/v0.1.4/wireman-0.1.4-x86_64-unknown-linux-gnu.tar.gz

shasum:
	shasum -a 256 wireman-0.1.4-x86_64-apple-darwin.tar.gz
	shasum -a 256 wireman-0.1.4-aarch64-apple-darwin.tar.gz
	shasum -a 256 wireman-0.1.4-aarch64-unknown-linux-gnu.tar.gz
	shasum -a 256 wireman-0.1.4-x86_64-unknown-linux-gnu.tar.gz
