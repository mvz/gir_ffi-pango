require 'rake/testtask'

namespace :test do
  Rake::TestTask.new(:unit) do |t|
    t.libs = ['lib']
    t.test_files = FileList['test/unit/*_test.rb']
    t.warning = true
  end
end

task :test => "test:unit"

task :default => 'test'
