# homebrew-luoto

luoto moved to [eetu/tap](https://github.com/eetu/homebrew-tap):

```sh
brew install eetu/tap/luoto
```

For an install from here, `brew update` names the steps: Homebrew moves a formula only into
a tap you trust.

```sh
brew tap eetu/tap
brew trust --formula eetu/tap/luoto
brew reinstall luoto
brew untap eetu/luoto
brew untrust --tap eetu/luoto
```
