module Configurator
  class << self

    def config_hash(hash={'foo' => 'foo', 'bar' => 'bar'})
      @configuration = hash
    end

    def foo
      @configuration['foo']
    end

    def bar
      @configuration['bar']
    end
  end
end
