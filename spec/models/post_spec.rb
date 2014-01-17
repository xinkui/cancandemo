require 'spec_helper'
require 'cancan/matchers'

describe Post do
  subject(:ability) {Ability.new(user)}
  let(:user) {nil}

  describe "abilities" do
    context "when is an user" do
      let(:user) { FactoryGirl.create(:user) }
      it { should be_able_to(:manager, Post.new)}
    end
  end
end
