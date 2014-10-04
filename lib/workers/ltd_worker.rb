require_dependency './ltd_worker_related/presenters/ltd_data'
require_dependency './ltd_worker_related/presenters/ltd_data_related/ltd_element'
require_dependency './ltd_worker_related/fetchers/patron_fetcher'

class LtdWorker
  include ClassConfigurable
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  after_config do
    recurrence { instance_eval &LtdWorker.config.pull_frequency }
  end

  def perform
    data.each { |elm| store elm.to_hash}
  end

  def store(attrs)
    storage.transaction do
      storage.create_with(attrs).find_or_create_by ltd_id: attrs[:ltd_id]
    end
  end

private

  def data
    config.data[:presenter].new http_response.body
  end

  def storage
    config.data[:storage_model]
  end

  def http_response
    config.fetch[:engine].new(config.fetch).response
  end
end