CerTool
=======

You'd rather swallow this pill instead of taking the regular openssl certification suppository.


Installation
------------

    git clone https://github.com/royaltm/certool.git
    make install

Custom prefix installation:

    prefix=/usr make install

Custom destination directory installation:

    destdir=$HOME/scripts make install


Usage
-----

    certool - displays help
    certool new - creates new key/csr named ssl.key.secure and ssl.csr
    certool self - creates self-signed key/crt named ssl.key.secure and ssl.crt


###Help

    certool: <command> [ssl_name|host]

    ssl_name: name of a file without extension (default: ssl)
    host: remote hostname to check ("connect" only)

    commands:

      Generate:
      - new:     a new private key and Certificate Signing Request (CSR)
      - self:    a self-signed certificate
      - req:     a CSR for an existing private key
      - reqcrt:  a CSR based on an existing certificate
      - rmpass:  Remove a passphrase from a private key

      Check:
      - readcsr: a Certificate Signing Request (CSR)
      - readkey: a private key
      - readcrt: a certificate
      - readpfx: a PKCS#12 file (.pfx)
      - readp12: a PKCS#12 file (.p12)
      - md5:     if MD5 of the public key matches with CSR and private key
      - connect: Show all the certificates (including Intermediates) from the host

      Convert:
      - derpem:  DER (binary) file (.der) to PEM (ascii) file (.crt)
      - pemder:  PEM (ascii) file (.crt) to DER (binary) file (.der)
      - pfxpem:  PKCS#12 (.pfx) containing a key and certificates to PEM (.pem)
      - p12pem:  PKCS#12 (.p12) containing a key and certificates to PEM (.pem)
      - pfx:     certificate file and a private key to PKCS#12 (.pfx)
