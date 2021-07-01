# phishing
Central Repository for Adding or Removing Domains / Links from the Phishing.Database project
https://github.com/mitchellkrogza/Phishing.Database

## Additions

DNS systems can operate on the domain level (everything before the first /) while IE Squid-proxy or uBlock Origin can operate on both sites of the slashes.

The `add-link` is for domains that have been hacked, IE a wp site where the phishing script lies in a subfolder vs a subdomain.

This means if a entire domain are only used i.e. `phishingexample.com`, add it to the domain list, if it reside inside a subfolder i.e. `/sub/oath/phishing-script/` then it goes to the url-list

### Add Phishing Domains

To add domains to this database send a Pull Request on the file https://github.com/mitchellkrogza/phishing/blob/main/add-domain

    include the domain name only (no http / https)

### Add Phishing Urls / Links

To add links / urls to this database send a Pull Request on the file https://github.com/mitchellkrogza/phishing/blob/main/add-link

    Include the full link
