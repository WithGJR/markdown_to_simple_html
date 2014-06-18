# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)

#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdown_to_simple_html/version'

Gem::Specification.new do |spec|
  spec.name          = "markdown_to_simple_html"
  spec.version       = MarkdownToSimpleHtml::VERSION
  spec.authors       = ["Kevin"]
  spec.email         = ["kevin3372000@gmail.com"]
  spec.summary       = %q{Markdown to HTML.}
  spec.description   = %q{Parsing a Markdown File and transform it to a Simple HTML File.}
  spec.homepage      = "https://github.com/WithGJR/markdown_to_simple_html"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
	spec.executables = ["md"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

	spec.add_runtime_dependency "redcarpet"
end
