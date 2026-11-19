# homebrew-tap

Homebrew formulas for Pavel Akhrameev's projects.

## Formulas

| Formula | Project |
|---|---|
| simslim | [Akhrameev/simslim](https://github.com/Akhrameev/simslim) |

## Install

Homebrew 6 and later refuse to load formulae from a third-party tap until you trust them. Trust only
the formula you want, then install it:

```sh
brew tap akhrameev/tap
brew trust --formula akhrameev/tap/simslim
brew install simslim
```

`brew trust akhrameev/tap` trusts every current and future item in this tap instead. Revoke either with
`brew untrust` (for example `brew untrust --formula akhrameev/tap/simslim`).

`simslim` here is the Swift port, not upstream's Go build. It installs a prebuilt Apple Silicon binary
and conflicts with `mobai-app/tap/simslim` because both install a `simslim` binary.
