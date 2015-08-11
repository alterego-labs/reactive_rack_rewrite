module ReactiveRackRewrite
  #
  # DB represantation of rewrite rule
  #
  class Rule < ActiveRecord::Base
    self.table_name = :reactive_rack_rewrite_rules
  end
end
