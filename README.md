# Homebrew-Mopidy

These formulae let you install Mopidy and Mopidy extensions with all
required dependencies on macOS.

This is a temporary work-around for https://github.com/mopidy/homebrew-mopidy/issues/32 while the Mopidy team works on full Python 3 support. 

## How to install these formulae?

1. Remove existing broken deps `brew uninstall --ignore-dependencies gst-python pygobject3`

2. Untap mopidy port `brew untap mopidy/mopidy`

3. Tap this fork ` brew tap troyxmccall/mopidy` 

4. Run `brew search <query>` to find the formula you're looking for.

5. Run `brew install <formula>` to install the formula and all needed
   dependencies.
6. If you have CLANG errors `unable to find module _spotify` try running `pip install Mopidy-Spotify`   




   If the formula conflicts with one from another tap, you can use `brew
   install troyxmccall/mopidy/<formula>` to explicitly install the formula from this
   repo.

   You can also install via URL: `brew install
   https://raw.github.com/troyxmccall/homebrew-mopidy/master/Formula/<formula>.rb`

## Troubleshooting

See `brew help`, `man brew`, or the Homebrew [docs](https://docs.brew.sh).

## Adding a formula to this tap

1. Fork this repository on GitHub.
2. Clone to your Mac.
3. Read [Python for Formula
   Authors](https://docs.brew.sh/Python-for-Formula-Authors) and look at the
   other formulae here.
4. In your locally cloned `homebrew-mopidy` repo, create a new branch: `git
   checkout -b my-new-formula`
5. Write/edit your formula (Ruby file). Check the [Homebrew
   docs](https://docs.brew.sh) for help.
6. Test it locally! `brew install ./my-new-formula.rb`. Does it install? Note,
   how `./<formula>.rb` will target the local file.
7. `git push origin my-new-formula` to get it into your GitHub as a
   new branch.
8. If you have to change something, add a commit and `git push`.
9. On GitHub, submit a pull request to get your branch merged into this repo.

License
-------

The formulae in this tap is licensed under the 2-clause BSD license, just like
Homebrew itself. See the file `LICENSE-BSD` for the license text.
