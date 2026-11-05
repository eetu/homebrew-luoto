# homebrew-luoto

Homebrew tap for [luoto](https://github.com/eetu/luoto): dev sandboxes that contain
supply-chain attacks. macOS and Linux.

```sh
brew tap eetu/luoto
brew trust --formula eetu/luoto/luoto
brew install luoto
luoto setup
```

Homebrew loads a third-party tap's formula only once you trust it, hence `brew trust`.
`Formula/luoto.rb` is written by luoto's release workflow; changes belong in
[`packaging/homebrew`](https://github.com/eetu/luoto/tree/main/packaging/homebrew).
