module Celerity
  Jars = Dir[File.dirname(__FILE__) + '/htmlunit/*.jar']
end

Celerity::Jars.each { |jar| require(jar) }

module HtmlUnit
  include_package 'com.gargoylesoftware.htmlunit'

  module Html
    include_package 'com.gargoylesoftware.htmlunit.html'
  end
end

module Java::OrgW3cDom::NamedNodeMap
  include Enumerable
  
  def each
    0.upto(getLength - 1) do |idx|
      yield item(idx)
    end
  end
end