# for read Fluent::TextParser::TEMPLATE_REGISTRY
require "fluent/registry"
require "fluent/configurable"
require "fluent/parser"
require "regexp_preview/single_line"
require "regexp_preview/multi_line"

module RegexpPreview
  attr_reader :file, :format, :params, :time_format, :regexp

  def self.processor(format)
    case format
    when "multiline"
      RegexpPreview::MultiLine
    else
      RegexpPreview::SingleLine
    end
  end
end
