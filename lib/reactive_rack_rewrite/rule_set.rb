module ReactiveRackRewrite
  #
  # Represents a rule set provider for rack-rewrite
  #
  # More details see https://github.com/jtrupiano/rack-rewrite
  #
  class RuleSet
    attr_reader :options

    #
    # Initializes new instance
    #
    # Parameters:
    # *options* - hash of additional options
    #
    def initialize(options = {})
      @options = options
    end

    #
    # Provides array of rules
    #
    # Returns:
    # rules array of Rack::Rewrite::Rule instances
    #
    def rules
      db_rules.map(&method(:wrap))
    end

    private

    def db_rules
      ::ReactiveRackRewrite::Rule.all
    end

    def wrap(db_rule)
      ReactiveRackRewrite::RackRewriteRuleWrapper.new(db_rule).call
    end
  end
end

