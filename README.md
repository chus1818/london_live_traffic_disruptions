# README

## Requirements

* Ruby (>= 2.0.0, tested with 2.1.1) 
* Bundler gem
* Postgres
* Redis

## Description

A Rails application which consumes the feed at a configurable interval and stores the data in a local model. In particular it consumes the TFL (Transport for London) live traffic disruptions feed called TIMS which can be found at [Live Traffic Disruptions - TIMS](http://data.tfl.gov.uk/tfl/syndication/feeds/tims_feed.xml).

## Comments

- LtdWorker configuration options are declared in the ltd_worker.rb initializer file.
- It is a good idea to cache pages#main action since it is quite demanding in terms of computing given the high volume of concurrent disruptions.

## Copyright

MIT license

Jesus Prieto Colomina