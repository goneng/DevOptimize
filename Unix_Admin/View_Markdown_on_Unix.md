# View Markdown in Browser on Unix <!-- omit in toc -->

from [How to get the Markdown Viewer addon of Firefox to work on Linux](https://superuser.com/a/1175837/160372)

(not trying to copy all the internet here, but\
I fell in love with Markdown and using it quite a lot\
so would be nice if all could see it properly)

## The Problem

Trying to open a Markdown (**.md** file) via a web-browser (Firefox?) on Linux,\
the browser asks you what to do with that file.

## The Cause

Linux (like Ubuntu 16.xx and 18.xx) does not recognize 'md' files as\
something that can be displayed in a web-browser.

## The Solution

- Declare a MIME-type for Markdown files:

  - Create the file -

    ```bash
    mkdir -p ~/.local/share/mime/packages
    vi ~/.local/share/mime/packages/text-markdown.xml
    ```

  - Have the following content in that file -

    ```xml
    <?xml version="1.0"?>
    <mime-info xmlns='http://www.freedesktop.org/standards/shared-mime-info'>
      <mime-type type="text/plain">
        <glob pattern="*.md"/>
        <glob pattern="*.mkd"/>
        <glob pattern="*.markdown"/>
      </mime-type>
    </mime-info>
    ```

- Update the (local) MIME-DB to recognize the new type:

  ```bash
  update-mime-database ~/.local/share/mime
  ```

- Install an add-on to parse the Markdown files in the browser, for example:

  - Firefox: [Markdown Viewer Webext](https://addons.mozilla.org/en-US/firefox/addon/markdown-viewer-webext/)
  - Firefox: [Markdown Here](https://addons.mozilla.org/en-US/firefox/addon/markdown-here/)
  - Firefox: [GitLab Markdown Viewer](https://addons.mozilla.org/en-US/firefox/addon/gitlab-markdown-viewer/)
