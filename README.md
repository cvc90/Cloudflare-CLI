# Cloudflare-CLI

## 📑 Description

CLI utility that manages Cloudflare services through the Cloudflare API

## 📑 Synopsis

```
Usage: Cloudflare [Options] <command> <parameters>
Options:
 --details, -d    Display detailed info where possible
 --debug, -D      Display API debugging info
 --quiet, -q      Less verbose
 -E <email>
 -T <api_token>
Environment variables:
 CF_ACCOUNT  -  email address (as -E option)
 CF_TOKEN    -  API token (as -T option)
Enter "Cloudflare help" to list available commands.
```


## 📑 Command Reference

```
$ Cloudflare help
Commands:
   show, add, delete, change, clear, invalidate, check
```

```
$ Cloudflare show
Parameters:
   zones, settings, records, listing
```

```
$ Cloudflare show zones
example.net active  #IDSTRING   OLD-NS1,OLD-NS2  NEW-NS1,NEW-NS2
```

```
$ Cloudflare show settings
Usage: Cloudflare show settings <zone>
```

```
$ Cloudflare show settings example.net
advanced_ddos                  off
always_online                  on
automatic_https_rewrites       off
...
```

```
$ Cloudflare show records
Usage: Cloudflare show records <zone>
```

```
$ Cloudflare show records example.net
www     auto CNAME     example.net.       ; proxiable,proxied #IDSTRING
@       auto A         198.51.100.1       ; proxiable,proxied #IDSTRING
*       3600 A         198.51.100.2       ;  #IDSTRING
...
```

```
$ Cloudflare show listings
198.51.100.0/24 whitelist       2014-10-30T05:31:30.099176Z     # NOTES
198.51.100.4    block           2014-10-30T05:31:30.099176Z     # NOTES
CN              challenge       2014-10-30T05:31:30.099176Z     # NOTES
...
```

```
$ Cloudflare add
Parameters:
   zone, record, whitelist, blacklist, challenge
```

```
$ Cloudflare add zone
Usage: Cloudflare add zone <name>
```

```
$ Cloudflare add record
Usage: Cloudflare add record <zone> <type> <name> <content> [ttl] [prio] [service] [protocol] [weight] [port]
   <zone>      domain zone to register the record in, see 'show zones' command
   <type>      one of: A, AAAA, CNAME, MX, NS, SRV, TXT, SPF, LOC
   <name>      subdomain name, or "@" to refer to the domain's root
   <content>   IP address for A, AAAA
               FQDN for CNAME, MX, NS, SRV
               any text for TXT, spf definition text for SPF
               coordinates for LOC (see RFC 1876 section 3)
   [ttl]       Time To Live, 1 = auto
   [prio]      required only by MX and SRV records, enter "10" if unsure
   These ones are only for SRV records:
   [service]   service name, eg. "sip"
   [protocol]  tcp, udp, tls
   [weight]    relative weight for records with the same priority
   [port]      layer-4 port number
```

```
$ Cloudflare add whitelist
Usage: Cloudflare add [<whitelist | blacklist | challenge>] [<IP | IP/mask | country_code>] [note]
```

```
$ Cloudflare delete
Parameters:
   zone, record, listing
```

```
$ Cloudflare delete zone
Usage: Cloudflare delete zone <name>
```

```
$ Cloudflare delete record
Usage: Cloudflare delete record [<record-name> [<record-type> | first] | [<zone-name>|<zone-id>] <record-id>]
```

```
$ Cloudflare delete record ftp.example.net
```

```
$ Cloudflare delete record example.net 1234567890abcdef1234567890abcdef
```

```
$ Cloudflare delete listing
Usage: Cloudflare delete listing [<IP | IP range | country_code | ID | note_fragment>] [first]
```

```
$ Cloudflare change
Parameters:
   zone, record
```

```
$ Cloudflare change zone
Usage: Cloudflare change zone <zone> <setting> <value> [<setting> <value> [ ... ]]
```

```
$ Cloudflare change zone example.net
Settings:
   security_level [under_attack | high | medium | low | essentially_off]
   cache_level [aggressive | basic | simplified]
   rocket_loader [on | off | manual]
   minify <any variation of css, html, js delimited by comma>
   development_mode [on | off]
   mirage [on | off]
   ipv6 [on | off]
Other: see output of 'show zone' command
```

```
$ Cloudflare change record
Usage: Cloudflare set record <name> [type <type> | first | oldcontent <content>] <setting> <value> [<setting> <value> [ ... ]]
You must enter "type" and the record type (A, MX, ...) when the record name is ambiguous,
or enter "first" to modify the first matching record in the zone,
or enter "oldcontent" and the exact content of the record you want to modify if there are more records with the same name and type.
Settings:
  newname        Rename the record
  newtype        Change type
  content        See description in 'add record' command
  ttl            See description in 'add record' command
  proxied        Turn CF proxying on/off
```

```
$ Cloudflare clear
Parameters:
   cache
```

```
$ Cloudflare clear cache
Usage: Cloudflare clear cache <zone>
```

```
$ Cloudflare invalidate
Usage: Cloudflare invalidate <url-1> [url-2 [url-3 [...]]]
```

```
$ Cloudflare check
Parameters:
   zone
```

```
$ Cloudflare check zone
Usage: Cloudflare check zone <zone>
```

## 📚 Documentation

- Initial Docker Setup: [Docker instructions](/docs/DOCKER_INSTALLATION.md)
- App Usage and Configuration: [All Documentation](docs/README.md)

## 📑 Minimum System Requirements

- bash 4.x
- curl
- php (php-cli) 5.x

## 📑 Recommended System Requirements

- bash 4.4.x
- curl
- php (php-cli) 8.x 

## 🏴 Translations of this file

* <a href="README_ES.md">
   <img src="https://github.com/lipis/flag-icons/blob/main/flags/4x3/es.svg" alt="README_ES.md" style="height: 20px !important;width: 20px !important;"> Spanish (Spain)
  </a> 

* <a href="README_DE.md">
   <img src="https://github.com/lipis/flag-icons/blob/main/flags/4x3/de.svg" alt="README_DE.md" style="height: 20px !important;width: 20px !important;"> German (Germany)
  </a> 

## 📑 License
  GPL 3.0 | [Read more here](LICENSE.md) | Source of the [animated GIF (Loading Animation)](https://commons.wikimedia.org/wiki/File:Loading_Animation.gif) | Source of the [selfhosted Fonts](https://github.com/adobe-fonts/source-sans)

## ☕ Support me

Support me to improve Cloudflare-CLI

Feel free to donate whatever you want to the following addresses:

- Bitcoin (BTC): `1BughfdxS2zpqZUhtS5jhkbxDWHhtqTaxN`
- Ethereum (ETH): `0xbE3A0FcD3f1BB61CCeEC94Ab9FE683E071331E00`
- Dash: `XjZgQAeVuLcfywDpp2JxfmpvQn3MrmAEC2`
- Zcash (ZEC): `t1J5dnHVeaWvdv3L43A62fVC6YAajKFEMbX`
- XMR: `47HLtavHyu2UgXVb4apyNnE55mqQTuy1fgPzbNYosqaRak7nkksoqj9enP4eMjBems4kM577T8yRZagnsyB5yrXP32cBN3F`
- RTM: `RWRYFXpXwrWnWFzPSrp4oyCV6QYaWD3eqX`
