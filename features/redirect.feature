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
      | an old RubyForge URL                                    | a new non-RubyForge URL                                     |
      | http://mocha.rubyforge.org/                             | http://gofreerange.com/mocha/docs/                          |
      | http://mocha.rubyforge.org/classes/Mocha/API.html       | http://gofreerange.com/mocha/docs/Mocha/API.html            |
      | http://rack.rubyforge.org/                              | http://rack.github.io/                                      |
      | http://rack.rubyforge.org/doc                           | http://www.rubydoc.info/github/rack/rack                    |
      | http://rack.rubyforge.org/doc/SPEC.html                 | http://www.rubydoc.info/github/rack/rack/master/file/SPEC   |
      | http://rack.rubyforge.org/doc/files/SPEC.html           | http://www.rubydoc.info/github/rack/rack/master/file/SPEC   |
      | http://rack.rubyforge.org/doc/Rack/Request.html         | http://www.rubydoc.info/github/rack/rack/Rack/Request       |
      | http://rack.rubyforge.org/doc/Rack/Response.html        | http://www.rubydoc.info/github/rack/rack/Rack/Response      |
      | http://treetop.rubyforge.org/                           | http://cjheath.github.io/treetop/                           |
      | http://treetop.rubyforge.org/syntactic_recognition.html | http://cjheath.github.io/treetop/syntactic_recognition.html |
