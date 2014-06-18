require "markdown_to_simple_html/version"
require 'redcarpet'

module MarkdownToSimpleHtml

	class MarkdownParser	
		def initialize(filename)
			@contents = IO.readlines("#{filename}.md").join
			@parser = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :hard_wrap => true)

		end

		def to_html
			@parser.render(@contents)
		end
	end
	
end
