desc "Build site."
task :build do
  sh "bundle exec middleman build"
end

desc "Publish site."
task :publish do
  sh "foreman run bundle exec shart"
end

task default: %w[build publish]