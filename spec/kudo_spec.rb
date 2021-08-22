# frozen_string_literal: true

RSpec.describe Kudo do
  it "has a version number" do
    expect(Kudo::VERSION).not_to be nil
  end

  it "pings" do
    expect(Kudo.ping).to eq "pong!"
  end
end
