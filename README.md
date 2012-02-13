scraperwiki

## Introduction

This Gem allows you to interact with ScraperWiki via the command line.

It only works for Ruby based scrapers (patches accepted for other languages).

## Features

### Create a new scraper <<< TODO, needs API :(

    $ scraperwiki init "My new scraper"

This will create a new Ruby scraper on ScraperWiki and create a local file
containing your scraper.

### Download an existing scraper

    $ scraperwiki clone short_name_of_scraper

This gets the current revision of the scraper code from ScraperWiki.

### Run the scraper locally

    $ scraperwiki run name_of_my_scraper.rb

Will run the scraper locally, outputting formatted data to the terminal for
your debugging pleasure.
