module Configurator
  class << self
    def config_hash(hash={'foo' => 'foo', 'bar' => 'bar'})
      @configuration = hash
    end

    def method_missing(method_id, &block)
      config_option = method_id.to_s
      if self.argument_valid?(config_option)
        @configuration[config_option]
      else
        super
      end
    end

    def respond_to?(method_id)
      config_option = method_id.to_s
      argument_valid?(config_option) || super
    end

    def argument_valid?(argument)
      ['foo', 'bar', 'baz', 'qux', 'quux', 'corge'].include?(argument)
    end
  end
end
