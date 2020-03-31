require 'chelsea/deps'
require_relative '../spec_helper'

RSpec.describe Chelsea::Deps do
  before do
    @dep_hash = get_dependency_hash
  end
  it "can collect dependencies given a valid Gemfile.lock" do
    output = StringIO.new
    file = "spec/testdata/Gemfile.lock"
    deps = Chelsea::Deps.new({path: Pathname.new(file)})

    dependencies = deps.to_h

    expect(dependencies.class).to eq(Hash)
    expect(dependencies.empty?).to eq(false)
  end

  it "can turn a dependencies hash into a valid coordinates object for OSS Index" do
    output = StringIO.new
    file = "spec/testdata/Gemfile.lock"
    deps = Chelsea::Deps.new({path: Pathname.new(file)})

    coordinates = Chelsea::Deps.to_coordinates(@dep_hash)

    expect(coordinates.class).to eq(Hash)
    expect(coordinates.empty?).to eq(false)
    expect(coordinates["coordinates"].size).to eq(30)
    expect(coordinates["coordinates"][0]).to eq("pkg:gem/addressable@2.7.0")
    expect(coordinates["coordinates"][15]).to eq("pkg:gem/rspec@3.9.0")
    expect(coordinates["coordinates"][29]).to eq("pkg:gem/webmock@3.8.3")
  end

  it "will raises a RuntimeError with a custom message with an invalid file path" do
    output = StringIO.new
    file = "invalid/path"
    expect{Chelsea::Deps.new({path: Pathname.new(file)})}.to raise_error(RuntimeError, "Gemfile.lock not parseable, please check file or that it's path is valid")
  end

  it "can turn a name and version into a valid purl" do
    file = "spec/testdata/Gemfile.lock"
    deps = Chelsea::Deps.new({path: Pathname.new(file)})

    expect(Chelsea::Deps.to_purl("name-thing", "1.0.0")).to eq("pkg:gem/name-thing@1.0.0")
  end
end
