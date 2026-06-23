# setup-jank

This action sets up [jank](https://jank-lang.org/) for use in GitHub Actions.

> [!WARNING] 
> Since jank is still in Alpha, this will always download the latest binary
> built from main.


## Usage

```yaml
- name: Setup jank
  uses: jank-lang/setup-jank@main
```

## Support

Currently, this action supports Debian/Ubuntu and macOS. Window is **not** supported.

| OS            | Package                                                     |
| ------------- | ----------------------------------------------------------- |
| Debian/Ubuntu | [ppa.jank-lang.org](https://ppa.jank-lang.org/)             |
| macOS         | [homebrew-jank](https://github.com/jank-lang/homebrew-jank) |