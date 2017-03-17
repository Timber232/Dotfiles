# Cifer - Wrapper Shell for GPG

No, I didn't mispell Cipher.
This is a custom shell script to encrypt/decrypt multiple folders using GPG. 

## Flags

The following flags are required regardless of whic modes you're in:
- **-u**, **-p**

- **-E**: Encrypt mode
- **-D**: Decrypt mode
- **-u**: Takes the user id parameter. This flag is required
- **-p**: Takes the target directory parameter. This flag is required
- **-t**: Takes the archive method parameter (accepts: `gz`|`bz2`). Default is `gz`
- **-a**: Performs action (encrypt|decrypt) on all contents within the target directory
- **-d**: Destructive. Destroys original files after encryption or decryption
- **-i**: Ignore if exists, don't replace existing files.

## Usage

###  Encrypt

Tar then encrypt all directories within the target folder:

```
cifer -E -u "<uid>" -p "<file_path>" -a
```

Tar then encrypt target directory:

```
cifer -E -u "<uid>" -p "<file_path>" 
```

### Decrypt

Decrypt then untar all directories with the chosen folder:

```
cifer -D -u "<uid>" -p "<file_path>" -a
```

Decrypt then untar target directory:

```
cifer -D -u "<uid>" -p "<file_path>"
```
