class LtdData::LtdElement
  attr_reader :raw

  def initialize(raw)
    @raw = raw.encode 'UTF-8', invalid: :replace, undef: :replace
  end

  def ltd_id
    to_hash[:ltd_id]
  end

  def to_hash
    @to_hash ||= build_formatted_hash.with_indifferent_access
  end

private

  def build_hash
    Hash.from_xml(raw)["Disruption"].inject ({}) do |sum, (key, value)|
      sum.merge key.underscore => value
    end
  end

  def build_formatted_hash
    build_hash.tap { |hash| hash[:ltd_id] = hash.delete :id }
  end
end