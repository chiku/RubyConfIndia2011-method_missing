module Configurator
  class << self
    def config_hash(hash={'foo' => 'foo', 'bar' => 'bar'})
      @configuration = hash
    end

    def method_missing(method_id)
      config_option = method_id.id2name.to_s
      raise "Booga (#{config_option}) or Ooga." unless ['foo', 'bar', 'baz', 'qux', 'quux', 'corge'].include?(config_option)
      @configuration[config_option]
    end
  end
end
