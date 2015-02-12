require 'rack/rewrite'

use Rack::Rewrite do
  # mocha.rubyforge.org
  moved_permanently '/', 'http://gofreerange.com/mocha/docs/', host: 'mocha.rubyforge.org'
  moved_permanently %r{^/classes/(.*)$}, 'http://gofreerange.com/mocha/docs/$1', host: 'mocha.rubyforge.org'

  # rack.rubyforge.org
  moved_permanently '/', 'http://rack.github.io/', host: 'rack.rubyforge.org'
  moved_permanently %r{^/doc/files/(.+)\.html$}, 'http://www.rubydoc.info/github/rack/rack/master/file/$1', host: 'rack.rubyforge.org'
  moved_permanently %r{^/doc/([A-Z]+)\.html$}, 'http://www.rubydoc.info/github/rack/rack/master/file/$1', host: 'rack.rubyforge.org'
  moved_permanently '/doc', 'http://www.rubydoc.info/github/rack/rack', host: 'rack.rubyforge.org'
  moved_permanently %r{^/doc/(.+)\.html$}, 'http://www.rubydoc.info/github/rack/rack/$1', host: 'rack.rubyforge.org'

  # treetop.rubyforge.org
  moved_permanently %r{^/(.*)$}, 'http://cjheath.github.io/treetop/$1', host: 'treetop.rubyforge.org'
end

run -> env { [404, {}, ['Not found']] }
