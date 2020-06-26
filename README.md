# aliashelper
You're a linux user? You use a lot of aliases? You forget your aliases? <br>
Yeah me, too. <br>
Because of that, i wrote a small simple bash script which lists all
of your aliases plus a short description of your commands. The output
is formatted and colored binary to increase readability. You also can
filter the alias list just by giving a keyword.

<img src="/screenshot.png" alt="Screenshot" width="400">

## Prequisites
In order to use the script, you need to separate your aliases from .bashrc in
a seperate file like e.g. '.aliases', since i don't tested files with more than
alias statements. The bashscript uses only standard programs like grep, printf,
cut, cat, echo, read, sort, head and test. Therefore it should be compatible with
almost every distro.

## Installing
Copy the scripts somewhere on your system into the same folder and edit the
aliashelper.settings to enter the path to your `.aliases` file. The standard
path is `"$HOME/.aliases.sh"`. After doing this add the `aliashelp.sh` script
to your aliases.<br> E.g.
```    alias aliases='/somepath/aliashelper/aliashelp.sh'     ```


## Usage
After aliasing the aliashelper you can just use youre alias for the helper (plus a keyword for filtering)
E.g. ```aliases``` or ```aliases <your keyword>```
