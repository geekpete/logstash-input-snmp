Gem::Specification.new do |s|
  s.name          = 'logstash-input-snmp'
  s.version       = '1.3.2'
  s.licenses      = ['Apache-2.0']
  s.summary       = "SNMP input plugin"
  s.description   = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ['Elasticsearch']
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ['lib', 'vendor/jar-dependencies']

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'input'}

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'logstash-mixin-ecs_compatibility_support', '~> 1.3'
  s.add_runtime_dependency 'logstash-mixin-event_support', '~> 1.0'
  s.add_runtime_dependency 'logstash-mixin-validator_support', '~> 1.0'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud', '>= 0.0.22', '< 0.1.0'

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'rspec-wait'
end
