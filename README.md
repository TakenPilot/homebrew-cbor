# TakenPilot Cbor Homebrew Tap

## Installation

```bash
brew tap takenpilot/cbor
brew install cbor-cli
```

## Testing

```bash
brew install --build-from-source -d ./Formula/cbor-cli.rb
```

## Audit locally

```bash
brew tap takenpilot/cbor-test .
brew audit --new cbor-cli
brew untap takenpilot/cbor-test
```
