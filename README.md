(r)eal (s)imple (l)ogging (a)pi
================================

This Repository holds all concepts behind rsla and links to the real solutions.

- [Concepts](#concepts)
  - [A Log Entry](#a-log-entry)
  - [ID](#id)
  - [Source](#source)
  - [Level](#level)
  - [Message(140 chars)](#message140-chars)
  - [message_long](#message_long)
  - [TimeStamp](#timestamp)
- [Architecture](#architecture)
  - [Clients](#clients)
  - [Servers](#servers)
    - [Export Formats](#export-formats)
    - [Paths](#paths)
  - [Registries](#registries)
    - [Server](#server)
    - [Clients](#clients-1)
  - [Pipes](#pipes)
  - [Stats](#stats)
- [Links](#links)
  - [Servers](#servers-1)
  - [Clients](#clients-2)
  - [Registry-Server](#registry-server)
  - [Registry-Client](#registry-client)
  - [Pipes](#pipes-1)
  - [Stats](#stats-1)


# Concepts
Here are the concepts used by rsla

## A Log Entry
Consists of
* ID
* Source
* Level
* Message(140 chars)
* message_long
* TimeStamp

## ID

## Source

## Level

## Message(140 chars)

## message_long

## TimeStamp


# Architecture
rsla consists of logging clients and servers to save logfiles.
Addtional components are registries (server and client), pipes and stats-clients

## Clients
All Clients must be able to:
* Write a Log Entry to any server
* Read the full Get API
* Have a config with the following settings to be used as defaults:
	* Default Value for Level
	* Default Value Source
	* Default Value for a Server (IP:Port)

## Servers
All Servers must be reachable via http and share in common:
* Export Formats
* HTTP-Paths

### Export Formats
You can get your data as:
* json
* xml
* csv
* txt

### Paths
* POST /log (body: source, level, message (optional), message_long, timestamp (optional))
* GET /log  - get all log entries
* GET /log/sources  - get all sources
* GET /log/levels  - get all Levels
* GET /log/tags  - get all Tags
* GET /log/:id  - get object with id
* GET /log/source/:source  - get all to source
* GET /log/level/:level - get all to level
* GET /log/tag/:tag - get all to tag
* GET /search?query (query: source, level, from, to, tag, string, ...)
* GET /log/timestamp/:from/[:to]  - get from, if no to then now
* GET /log/last  - get newest Entry
* GET /log/last/:number  - get- newest number

## Registries
Can save logger api endpoints and display latest. And can search in the saves apis

### Server

### Clients

## Pipes
Consist of two parts:
1. Behaves like a Logger Server, but sends something (email, file, ftp) with the info
2. Watches for something and behaves like a client

## Stats

# Links

## Servers

## Clients

## Registry-Server

## Registry-Client

## Pipes

## Stats