# -*- coding: utf-8 -*-

require "spec_helper"
require "ans-copyright"

describe Ans::Copyright, "show_copyright" do
  let(:helper){
    class Ans::Copyright::SpecHelper
      include Ans::Copyright
    end
    Ans::Copyright::SpecHelper.new
  }
  let(:copyright){"&copy; Answer"}

  before do
    Delorean.time_travel_to Time.parse "2013/01/01"
  end
  after{Delorean.back_to_the_present}

  context "since, now を指定しない場合" do
    subject{helper.show_copyright copyright}
    it{should == "&copy; Answer"}
  end
  context "since のみを指定した場合" do
    subject{helper.show_copyright copyright, since: 2012}
    it{should == "&copy; Answer 2012 - 2013"}
  end
  context "now のみを指定した場合" do
    subject{helper.show_copyright copyright, now: 2012}
    it{should == "&copy; Answer 2012"}
  end
  context "since, now を指定した場合" do
    subject{helper.show_copyright copyright, since: 2012, now: 2014}
    it{should == "&copy; Answer 2012 - 2014"}
  end

  context "padding, separator を指定した場合" do
    subject{helper.show_copyright copyright, since: 2012, now: 2014, padding: "=", separator: ":"}
    it{should == "&copy; Answer=2012:2014"}
  end

  context "file を指定した場合" do
    before do
      File.open full_path, "w" do |f|
        f.puts "test"
      end
    end
    after do
      File.unlink full_path
    end
    let(:full_path){Rails.root.join path}
    let(:path){"tmp/ans-copyright.txt"}
    let(:now){Time.now.year}

    subject{helper.show_copyright copyright, file: path}
    it{should == "&copy; Answer #{now}"}
  end
end
