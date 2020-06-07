# Import CA Root Certificate to Linux <!-- omit in toc -->

Based on [Thomas Leister](https://thomas-leister.de/en/about-me/)'s post -\
_[How to import CA root certificates on Linux and Windows](https://thomas-leister.de/en/how-to-import-ca-root-certificate/)_\
and on _[Linux Cert Management (Chromium Docs)](https://chromium.googlesource.com/chromium/src/+/master/docs/linux/cert_management.md)_

Also got a tip from [Grig "Punkie" Larson](http://punkwalrus.net/) to have unique certificate-names\
(see _[Installing a self-signed cert on a server, forcing Chrome on Linux to like it](https://punkwalrus.livejournal.com/1198022.html)_)


## Export a Certificate from Windows

- Start > _Manage computer certificates_
- Go to: _Trusted Root Certification Authorities > Certificates_
- Select the entry you wish to export\
  (like: _Websense Public Primary Certificate_)
- Choose: _Action > All Tasks > Export_...
- Click: _[Next], [Next], [Browse]_...
- Choose name and location for the certificate\
  (call it 'root.cert.cer' or something)
- Click: _[Next], [Finish]_
- Close the _Manage computer certificates_ window


## Import the Certificate to the Linux Machine

- Get the certificate to the Linux machine
- Run a [script](bin/import_root_cert.sh) to distribute the certificate to the right places:
    ```bash
    Unix_Admin/bin/import_root_cert.sh  <path-to-cert-file>  [<certificate-name>]
    ```

