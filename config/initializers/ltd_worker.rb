# I haven't defined the pull_frequency options as a string because it would
# have been a string of code, which is quite ugly
ltd_worker_configuration = {
  pull_frequency: proc { hourly.minute_of_hour *(0..60).step(5).to_a },
  data: {
    presenter:     LtdData,
    storage_model: LondonTrafficDisruption
  },
  fetch: {
    engine:  PatronFetcher,
    url:     'http://data.tfl.gov.uk/tfl/syndication/feeds/tims_feed.xml',
    timeout: 30
  }
}

LtdWorker.config ltd_worker_configuration
