Feature: Redirect old RubyForge URL
  As a Rubyist
  I want old RubyForge URLs to redirect somewhere helpful
  So that I can still follow old links

  Scenario Outline:
    When I visit <an old RubyForge URL>
    Then I should get redirected
      And the redirect should be permanent
      And the redirect should send me to <a new non-RubyForge URL>

    Examples:
      | an old RubyForge URL                                      | a new non-RubyForge URL                                                   |
      | http://libxml.rubyforge.org/                              | http://xml4r.github.io/libxml-ruby/                                       |
      | http://libxml.rubyforge.org/rdoc                          | http://xml4r.github.io/libxml-ruby/rdoc                                   |
      | http://libxml.rubyforge.org/doc/classes/XML/Document.html | http://xml4r.github.io/libxml-ruby/rdoc/classes/LibXML/XML/Document.html  |
      | http://mocha.rubyforge.org/                               | http://gofreerange.com/mocha/docs/                                        |
      | http://mocha.rubyforge.org/classes/Mocha/API.html         | http://gofreerange.com/mocha/docs/Mocha/API.html                          |
      | http://rack.rubyforge.org/                                | http://rack.github.io/                                                    |
      | http://rack.rubyforge.org/doc                             | http://www.rubydoc.info/github/rack/rack                                  |
      | http://rack.rubyforge.org/doc/SPEC.html                   | http://www.rubydoc.info/github/rack/rack/master/file/SPEC                 |
      | http://rack.rubyforge.org/doc/files/SPEC.html             | http://www.rubydoc.info/github/rack/rack/master/file/SPEC                 |
      | http://rack.rubyforge.org/doc/Rack/Request.html           | http://www.rubydoc.info/github/rack/rack/Rack/Request                     |
      | http://rack.rubyforge.org/doc/Rack/Response.html          | http://www.rubydoc.info/github/rack/rack/Rack/Response                    |
      | http://rake.rubyforge.org/                                | http://docs.seattlerb.org/rake/                                           |
      | http://rake.rubyforge.org/files/doc/rational_rdoc.html    | http://docs.seattlerb.org/rake/doc/rational_rdoc.html                     |
      | http://rake.rubyforge.org/classes/Rake/FileList.html      | http://docs.seattlerb.org/rake/Rake/FileList.html                         |
      | http://treetop.rubyforge.org/                             | http://cjheath.github.io/treetop/                                         |
      | http://treetop.rubyforge.org/syntactic_recognition.html   | http://cjheath.github.io/treetop/syntactic_recognition.html               |

  Scenario:
    When an unmapped old RubyForge URL is visited
    Then a not found page should be presented
      And the page should let me search for the gem
      And the page should explain how I can fix this
