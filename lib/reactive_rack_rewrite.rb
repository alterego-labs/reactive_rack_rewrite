require 'active_record'
require 'active_support/core_ext/module'


require "reactive_rack_rewrite/version"
require 'rack/rewrite'

module ReactiveRackRewrite
  extend ActiveSupport::Autoload

  autoload :RackRewriteRuleWrapper
  autoload :Rule
  autoload :RuleSet
end
