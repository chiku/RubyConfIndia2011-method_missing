require 'forwardable'
require 'ostruct'

module Configurator
  class << self

    extend Forwardable
    def_delegators :@configuration, :foo, :bar

    def config_hash(hash={'foo' => 'foo', 'bar' => 'bar'})
      @configuration = OpenStruct.new hash
    end
  end
end
