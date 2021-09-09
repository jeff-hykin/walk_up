require "date"

if ENV["FORNIX_FOLDER"] == nil
    exit 1
end

Gem::Specification.new do |spec|
    spec.name = 'walk_up'
    spec.version = IO.read(File.join(ENV["FORNIX_FOLDER"], "/gem_tools/version.txt"))
    spec.date = Date.today.to_s
    spec.summary = 'A simple library to walk up a folder path'
    spec.authors = ["Jeff Hykin",]
    spec.homepage = 'https://github.com/jeff-hykin/walk_up.git'
    spec.license = 'MIT'
    spec.description       = <<-desc
    desc
    
    spec.required_ruby_version = '>=2.5.0'

    spec.require_paths = [File.join(ENV["FORNIX_FOLDER"],'main')]
    spec.files            += Dir.glob(ENV["FORNIX_FOLDER"]+"*.md")
    spec.files            += Dir.glob(ENV["FORNIX_FOLDER"]+"main/*")
    spec.files            += Dir.glob(ENV["FORNIX_FOLDER"]+"main/**/*")
    
    # bin files
    for each in Dir.glob("bin/*")
        system "chmod a+x '#{each}'"
        spec.executables << File.basename(each)
    end
    
    spec.metadata = {
    }
end