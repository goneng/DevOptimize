# Change Date-Format - macOS <!-- omit in toc -->

To change the date format in your Mac Terminal from Hebrew to English, \
you can adjust the locale settings. \
(good for setting `ls -l` results and such)

Here's a step-by-step guide:

## 1. Change Locale for Terminal

You can change the locale specifically for the Terminal app by modifying the `.zshrc` or `.bash_profile` file, depending on the shell you are using.

### For Zsh (default shell in macOS Catalina and later)

1. Open the Terminal.
2. Open the .zshrc file in a text editor:
    ```sh
    nano ~/.zshrc
    ```
3. Add the following lines to set the locale to English:
    ```sh
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    ```
4. Save the file and exit the text editor (Ctrl+X, then Y to confirm).
5. Apply the changes by sourcing the .zshrc file:
    ```sh
    source ~/.zshrc
    ```

### For Bash (default shell in macOS Mojave and earlier)

1. Open the Terminal.
2. Open the .bash_profile file in a text editor:
    ```sh
    nano ~/.bash_profile
    ```
3. Add the following lines to set the locale to English:
    ```sh
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    ```
4. Save the file and exit the text editor (Ctrl+X, then Y to confirm).
5. Apply the changes by sourcing the .bash_profile file:
    ```sh
    source ~/.bash_profile
    ```

## 2. Restart Terminal

After making these changes, restart your Terminal to ensure the new settings take effect. \
Open a new Terminal window and check the date format.

## 3. Verify Changes

To verify that the changes have taken effect, you can run:

```sh
locale
```
This command should display the locale settings, \
showing `en_US.UTF-8` for relevant locale variables.

## Example Output

After making the changes, the date should now display in English when you run the date command:

```sh
date
```

This should show the date in the format, for example:

```sh
Tue May 22 14:45:00 PDT 2024
```

These steps will ensure your Terminal displays dates in *English* rather than *Hebrew*.
