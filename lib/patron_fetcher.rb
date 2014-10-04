class PatronFetcher
  attr_reader :url, :options

  def initialize(options = {})
    @url     = URI(options[:url])
    @options = OpenStruct.new options
  end

  def response
    session.get url.path
  end

  def session
    Patron::Session.new.tap do |session|
      session.timeout  = options.timeout
      session.base_url = "#{url.scheme}://#{url.host}:#{url.port}"
    end
  end
end