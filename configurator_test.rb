require 'test/unit'
require File.expand_path('configurator')

class ConfiguratorTest < Test::Unit::TestCase
  def test_should_resolve_foo_to_foo
    Configurator.config_hash
    assert_equal 'foo', Configurator.foo
  end

  def test_should_resolve_bar_to_bar
    Configurator.config_hash
    assert_equal 'bar', Configurator.bar
  end

  def test_should_respond_to_foo
    Configurator.config_hash
    assert Configurator.respond_to?(:foo)
  end

  def test_should_respond_to_bar
    Configurator.config_hash
    assert Configurator.respond_to?(:bar)
  end

  def test_should_raise_an_exception_for_unknown_method
    Configurator.config_hash
    assert_raise NoMethodError do
      Configurator.haha
    end
  end
end
