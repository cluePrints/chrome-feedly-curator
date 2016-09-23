# ![Feedly curator icon](images/icon38.png) Feedly curator for Chrome

Filter out articles

[![TODO: Example usage on YouTube](youtube-splashscreen.jpg)](http://www.youtube.com/watch?v=TODO)

# Installation

## From Chrome Web Store

See TODO

## Load unpacked extension

* `git clone https://github.com/clueprints/chrome-feedly-curator.git`
* Open Chrome with `chrome://extensions/`
* Tick "Developer mode" (upper right hand)
* "Load unpacked extension..." and select `chrome-feedly-curator` path

## Release extension in Chrome Web Store (as ZIP)

* code
* bump version in manifest.json
* `git tag VERSION`
* `git push --tags`
* `make zip`
* Upload `build/chrome-feedly-curator.zip` to https://chrome.google.com/webstore/developer/dashboard

## Release CRX

Ensure that your private `chromium.pem` is stored in your `$HOME`.

* code
* `make crx`
* Distribute `build/feedly-tabs.crx`
