namespace :javascript do
  desc "Build your JavaScript bundle"
  task :build do
    system "yarn install && yarn run build_admin"
  end
end

Rake::Task["assets:precompile"].enhance(["javascript:build"])

# Rake::Task["assets:precompile"].enhance do
#   Rake::Task["javascript:build"].execute
# end