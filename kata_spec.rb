require "rspec"
require_relative "kata"

describe CodeKata do

  describe "#random" do
    it "calls rand" do
      expect(subject).to receive(:rand).and_return(12345)
      expect(subject.random).to eq 12345
    end
  end

  describe "#test" do
    it "returns true" do
      expect(subject.test_method).to be true
    end
  end
end

describe "#test" do
  it "returns my_test string" do
    expect(test).to eq "my_test"
  end
end
