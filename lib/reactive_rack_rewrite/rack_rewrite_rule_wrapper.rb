require 'rack/rewrite'
require 'rack/rewrite/rule'

module ReactiveRackRewrite
  #
  # Wrapps DB rule into Rack::Rewrite::Rule
  #
  class RackRewriteRuleWrapper
    attr_reader :db_rule

    def initialize(db_rule)
      @db_rule = db_rule
    end

    def call
      Rack::Rewrite::Rule.new(*rule_params)
    end

    private

    def rule_params
      [
        db_rule.method.to_sym,
        build_from,
        db_rule.to_pattern
      ]
    end

    def build_from
      %r[#{db_rule.from_pattern}]
    end
  end
end
