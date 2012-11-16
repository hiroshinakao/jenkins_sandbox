#encoding: utf-8

require 'spec_helper'

describe User do

  describe :full_name do

    context "姓名が揃っている場合" do
      subject { User.new(first_name: "Dio", last_name: "Brando")}
      its(:full_name) {should == "Dio Brando"}
    end

  end
end
