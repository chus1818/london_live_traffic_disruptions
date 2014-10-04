class LtdData
  include Enumerable

  attr_reader :schema, :options
  delegate :each, to: :elements

  def initialize(raw, options = {})
    @schema = Nokogiri::XML(raw.to_s)
  end

  def elements
    @elements ||= raw_elements.map { |raw_elm| LtdElement.new raw_elm.to_s } 
  end

private

  def raw_elements
    @raw_elements ||= schema.xpath disruption_xpath
  end

  def disruption_xpath
    '//xmlns:Disruptions//xmlns:Disruption'
  end
end