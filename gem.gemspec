# frozen_string_literal: true
require "date"
require 'fileutils'

if ENV["FORNIX_FOLDER"] == nil
    exit 1
end

FileUtils.cd(ENV["FORNIX_FOLDER"])

Gem::Specification.new do |spec|
    spec.name = 'walk_up'
    spec.version = IO.read(ENV["FORNIX_FOLDER"]+"/gem_version.txt")
    spec.date = Date.today.to_s
    spec.summary = 'A simple library to walk up a folder path'
    spec.authors = ["Jeff Hykin",]
    spec.homepage = 'https://github.com/jeff-hykin/walk_up.git'
    spec.license = 'MIT'
    spec.description       = <<-desc
    desc
    spec.files = Dir["{lib}/**/*", "LICENSE", "*.md"]
    
    spec.required_ruby_version = '>=2.5.0'

    spec.metadata = {
        "yard.run" => "yri",
    }
end