scraperwiki

## Introduction

This Gem allows you to interact with ScraperWiki via the command line.

## Features

### Create a new scraper <<< TODO, needs API :(

    $ scraperwiki init "My new scraper"

This will create a new Ruby scraper on ScraperWiki (patches accepted for other
languages) and create a local file containing your scraper.

### Download an existing scraper

    $ scraperwiki clone short_name_of_scraper

This gets the current revision of the scraper code from ScraperWiki.

### Run the scraper locally

    $ scraperwiki name_of_my_scraper.rb

Will run the scraper locally, outputting formatted data to the terminal for
your debugging pleasure.
