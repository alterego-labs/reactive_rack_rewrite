require 'spec_helper'

describe ReactiveRackRewrite::RuleSet do
  subject(:rule_set) { described_class.new(options) }

  let(:options) { {} }

  it { is_expected.to respond_to :options }
  it { is_expected.to respond_to :rules }

  describe '#rules' do
    context 'when no rules in DB' do
      its(:rules) { is_expected.to be_empty }
    end

    context 'when there are some rules in DB' do
      let!(:db_rule) { ReactiveRackRewrite::Rule.create(method: :rewrite) }

      its(:rules) { is_expected.to_not be_empty }
    end
  end
end

