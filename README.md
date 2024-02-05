# Phishing
Central Repository for Adding or Removing Domains / Links from the [Phishing.Database][PD] project

## Toc
<!-- TOC -->
* [Phishing](#phishing)
  * [Toc](#toc)
  * [Committing Phishing records](#committing-phishing-records)
    * [Add Phishing Domains](#add-phishing-domains)
    * [Add Phishing Urls / Links](#add-phishing-urls--links)
  * [Add phishing by IP](#add-phishing-by-ip)
  * [False Positives](#false-positives)
<!-- TOC -->

## Committing Phishing records

DNS systems can operate on the domain level (everything between the protocol and the first /) while IE Squid-proxy or uBlock Origin can operate on both sides of the slashes and protocol independently.

### Add Phishing Domains

| File                                               | Contents                                                                                                                                                                                                                                                                                                                                      |
| -------------------------------------------------- |-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [add-domain](../main/add-domain)                   | This list are matching a records `1 to 1` or this domain only (hosts file style RFC:952 and RFC:953                                                                                                                                                                                                                                           |
| [add-wildcard-domain](../main/add-wildcard-domain) | This domain and all it's subdomains should be added. This means if an entire domain is being used for phishing i.e. `phishing.example.com`, then add it to the domain list (add-domain). If the phishing threat resides inside a subfolder of the domain i.e. `/sub/oath/phishing-script/payload.php` then add it to the url list (add-link). |

include the domain name only (no http / https) and no path (/something)

### Add Phishing Urls / Links

To add either a domain, subdomain or a number of URI's to the project, you should be understanding a bit about how it is working.

| File                         | Contents                    |
| ---------------------------- | --------------------------- |
| [add-link](../main/add-link) | this URI, and only this URI |

## Add phishing by IP

| File                                                           | Contents                                                                                    |
| -------------------------------------------------------------- |---------------------------------------------------------------------------------------------|
| [IP-addr.cidr.in-addr.arpa](../main/IP-addr.cidr.in-addr.arpa) | This is a list for blocking phishing by IP address in CIDR notated in-arpa style (rfc:5737) |
| [IP-addr.cidr.list](../main/IP-addr.cidr.list)                 | This is a list for blocking phishing by IP address in CIDR notation style (rfc:5737)        |
| [IP-addr.in-addr.arpa](../main/IP-addr.in-addr.arpa)           | This is a list for blocking phishing by IP address in in-arpa style (rfc:5737)              |
| [IP-addr.list](../main/IP-addr.list)                           | This is a list for blocking phishing by IP address in (strait forward) style (rfc:5737)     |

## False Positives

To be able to keep the whitelist as precise as possible, the Phishing DB are using 3 types of list.

| File                                               | Contents                                                                                                                                                                                                                                                                                                                                      |
| -------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| The [first list](../main/falsepositive.list)       | Matching `1 on 1`. This means, should we only whitelist IE. `subdomain1.example.com` but not `subdomain2.example.com`, then this is the list.                                                                                                                                                                                                 |
| The [other list](../main/falsepositive_regex.list) | (ALL) is [wildcard](https://github.com/Ultimate-Hosts-Blacklist/whitelist/blob/script/README.rst#all) based. This means every subdomains from `example.net` and lover level such as `subdomain1.example.net` & `subdomain2.example.net`. This list also accepts full regex. Except from ending `$` and `\\` as this is done by automatically. |
| The [third list](../main/falsepositive_rzd.list)   | (RZD) will probably never be used... Read the full doc here before attempting to making changes to it: https://github.com/Ultimate-Hosts-Blacklist/whitelist/blob/script/README.rst#rzd                                                                                                                                                       |

For better understanding of these specialities, you are welcome to read the tools [Readme](https://github.com/Ultimate-Hosts-Blacklist/whitelist/tree/script#special-markers).

[PD]: https://github.com/mitchellkrogza/Phishing.Database
