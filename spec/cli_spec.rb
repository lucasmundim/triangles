require 'spec_helper'

describe Triangles::Cli do
  def cli_run args
    # simulates shell's ARGV
    Triangles::Cli.run args.split(" ")
  end

  before :each do
    # ignores output and exit
    allow(Triangles::Cli).to receive(:puts)
    allow(Triangles::Cli).to receive(:exit).with(1)
  end

  context 'when arguments are valid for a triangle' do
    before :each do
      allow(Triangles::Triangle).to receive(:new).and_return(double(classification: "some_classification", valid?: true))
    end

    it "prints triangle's classification" do
      expect(Triangles::Cli).to receive(:puts).with("some_classification")
      cli_run "1 2 3"
    end
  end

  context 'when arguments are invalid for a triangle' do
    before :each do
      allow(Triangles::Triangle).to receive(:new).and_return(double(valid?: false))
    end

    it 'returns exit code 1' do
      expect(Triangles::Cli).to receive(:exit).with(1)
      cli_run "invalid"
    end

    it 'prints the usage message' do
      expect(Triangles::Cli).to receive(:puts).with(Triangles::Cli.usage)
      cli_run "invalid"
    end
  end
end
