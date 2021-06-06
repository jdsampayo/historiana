# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
require "uglifier"

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end
activate :i18n, mount_at_root: :es, langs: %w[es en fr]
activate :blog do |blog|
  blog.sources = "blog/{lang}/{year}-{title}.html"
  blog.permalink = "blog/{lang}/{year}/{title}.html"
  blog.layout = "blog_layout"
  blog.summary_generator = Proc.new { |article, rendered, length, ellipsis|
    summary = article.default_summary_generator(rendered, length, ellipsis)
    f = Nokogiri::HTML.fragment(summary)
    f.search('.//h1').remove
    f.to_html
  }
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_html
  activate :minify_javascript,
    compressor: proc {
      ::Uglifier.new(harmony: true)
    }
  activate :gzip
end
