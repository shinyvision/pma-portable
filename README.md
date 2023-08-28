# Download and run PhpMyAdmin from anywhere on your PC!

PhpMyAdmin is a handy tool for us PHP developers using MySQL, but who has the time to manage a PhpMyAdmin installation and keep it up-to-date? Not to mention the fact that now it's somewhere on your filesystem, when you just want to make a few simple changes in something other than the Jetbrains database tool.

This BASH script solves your problem

---

## Installation instructions

Make sure you have $HOME/.local/bin added to your `PATH` variable. If you do not know how to do this, let me help you:

```shell
mkdir -p $HOME/.local/bin && echo 'export PATH="$PATH:'$HOME'/.local/bin"' >> $HOME/.bashrc;. $HOME/.bashrc
```

Copy and paste this:

```shell
wget https://raw.githubusercontent.com/shinyvision/pma-portable/main/pma.sh -O $HOME/.local/bin/pma && chmod +x $HOME/.local/bin/pma
```

Done.

## Usage

```shell
$ pma
```

Go to http://localhost:8019 and login to your server.

If you need a certain config file to make PhpMyAdmin work, just put it in `$HOME/.local/share/pma-files/config.inc.php`. I cannot tell you how to do this, because I don't know how your server is set up.

## An ethical note

If unlike me you make use of PhpMyAdmin a lot, just download it and leave it on your PC, because every time you run this script, it will download the latest installation from phpmyadmin.net. If you use this, you're solely responsible for overloading their servers and I don't think that is okay.
