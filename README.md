# My GitHub pages portfolio

This is my portfolio for GitHub pages I created using [Hugo](https://gohugo.io/).

Using [blowfish](https://github.com/nunocoracao/blowfish) theme.

## Installation

1. Clone the repository

```
git clone git@github.com:lelouvincx/lelouvincx.github.io.git
export GITHUB_TOKEN=<your_github_token>
bash ./install-blowfish.sh
```

2. Install hugo by asdf or mise

```bash
asdf plugin add hugo
asdf install hugo latest
asdf global hugo latest
```

Or using mise:

```bash
mise use hugo@latest
```

**Run the server:**

```bash
hugo server
```

**Build the server:**

```bash
hugo
```
