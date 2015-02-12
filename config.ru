require 'rack/rewrite'

use Rack::Rewrite do
  # rack.rubyforge.org
  moved_permanently '/', 'http://rack.github.io/', host: 'rack.rubyforge.org'
  moved_permanently %r{^/doc/([A-Z]+)\.html$}, 'http://www.rubydoc.info/github/rack/rack/master/file/$1', host: 'rack.rubyforge.org'
  moved_permanently %r{^/doc/(.+)\.html$}, 'http://www.rubydoc.info/github/rack/rack/$1', host: 'rack.rubyforge.org'

  # treetop.rubyforge.org
  moved_permanently %r{^/(.*)$}, 'http://cjheath.github.io/treetop/$1', host: 'treetop.rubyforge.org'

  # rake.rubyforge.org
  moved_permanently '/', 'http://docs.seattlerb.org/rake/', host: 'rake.rubyforge.org'
  moved_permanently %r{^/(?:files|classes)/(.+)$}, 'http://docs.seattlerb.org/rake/$1', host: 'rake.rubyforge.org'
end

run -> env { [404, {}, ['Not found']] }
