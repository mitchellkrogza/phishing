# Phishing
Central Repository for Adding or Removing Domains / Links from the Phishing.Database project
https://github.com/mitchellkrogza/Phishing.Database

## Committing Phishing records

DNS systems can operate on the domain level (everything before the first /) while IE Squid-proxy or uBlock Origin can operate on both sides of the slashes.

The `add-link` is for domains that have been hacked, ie. a Wordpress site where the phishing script lies in a subfolder vs a subdomain.

This means if an entire domain is being used for phishing i.e. `phishing.example.com`, then add it to the domain list (add-domain). If the phishing threat resides inside a subfolder of the domain i.e. `/sub/oath/phishing-script/payload.php` then add it to the url list (add-link).

### Add Phishing Domains

To add domains to this database send a Pull Request on the file https://github.com/mitchellkrogza/phishing/blob/main/add-domain

    include the domain name only (no http / https)

### Add Phishing Urls / Links

To add links / urls to this database send a Pull Request on the file https://github.com/mitchellkrogza/phishing/blob/main/add-link

    Include the full link

## False Positives

To be able to keep the whitelist as precise as possible, the Phishing DB are using 3 types of list.

1. The [first list](../main/falsepositive.list) is matching 1 on 1. This means if we should only whitelist IE. `subdomain1.example.com` but not `subdomain2.example.com`, then this is the list.
2. The [other list](../main/falsepositive_regex.list) (ALL) is [wildcard](https://github.com/Ultimate-Hosts-Blacklist/whitelist/blob/script/README.rst#all) based. This means every subdomains from `example.net` and lover level such as `subdomain1.example.net` & `subdomain2.example.net`. This list also accepts full regex. Except from ending `$` and `\\` as this is done by automatically.
3. The [third list](../main/falsepositive_rzd.list) (RZD) will probably never be used... Read the full doc here before attemting to making changes to it: https://github.com/Ultimate-Hosts-Blacklist/whitelist/blob/script/README.rst#rzd

For better understanding of these speciallities, you are welcome to read the tools [Readme](https://github.com/Ultimate-Hosts-Blacklist/whitelist/tree/script#special-markers).
