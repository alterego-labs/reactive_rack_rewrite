require 'spec_helper'

describe ReactiveRackRewrite::RackRewriteRuleWrapper do
  subject(:wrapper) { described_class.new(db_rule) }

  let(:db_rule) { ReactiveRackRewrite::Rule.new(method: :rewrite, from_pattern: '/\/admin/', to_pattern: '/administrator') }

  its(:call) { is_expected.to be_kind_of Rack::Rewrite::Rule }

  context 'sets properties correctly' do
    subject(:rack_rule) { wrapper.call }

    its(:rule_type) { is_expected.to eq db_rule.method.to_sym }
    its(:from) { is_expected.to eq %r[#{db_rule.from_pattern}] }
    its(:to) { is_expected.to eq db_rule.to_pattern }
  end
end
