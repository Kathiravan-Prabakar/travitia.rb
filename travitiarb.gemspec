Gem::Specification.new do |pkg|
    pkg.name = "travitiarb"
    pkg.version = "1.0.0"
    pkg.summary = "A simple Travitia API Wrapper written in ruby"
    pkg.files = [
        "lib/travitiarb.rb"
    ]
    pkg.authors = ["Prabakar"]
    pkg.require_paths = ["lib"]
    pkg.add_dependency 'httparty', ">= 0.18.1"
end