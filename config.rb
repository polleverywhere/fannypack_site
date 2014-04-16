# Live reload during development.
activate :livereload, no_swf: true

# Syntax highlighting.
activate :syntax

# Pretty URLs.
activate :directory_indexes

# Page layouts yo.
page '*', layout: :body

# Github like Markdown powers.
set :markdown_engine, :redcarpet
set :markdown,
  no_intra_emphasis: true,  # Fon't emaphasize_snakecased_words.
  fenced_code_blocks: true, # Parse code blocks for syntax highlighting.
  smartypants: true,        # Propper punctiation, quotes, etc.
  prettify: true

# Build-specific configuration.
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  # Enable cache buster
  activate :asset_hash
end
