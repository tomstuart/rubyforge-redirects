# RubyForge redirects

[![Build Status](https://travis-ci.org/tomstuart/rubyforge-redirects.svg?branch=master)](https://travis-ci.org/tomstuart/rubyforge-redirects)

[RubyForge](http://en.wikipedia.org/wiki/RubyForge) was [taken offline](https://twitter.com/evanphx/status/399552820380053505) long ago. Many RubyForge-hosted projects have moved their sites elsewhere, but there are plenty of pages on the web which still link to their now-defunct rubyforge.org URLs.

For example, blog posts referencing the Rack specification might link to http://rack.rubyforge.org/doc/SPEC.html, but the [correct URL](https://github.com/rack/rack/issues/633) is now http://www.rubydoc.info/github/rack/rack/master/file/SPEC.

This repository contains a simple Rack application which can accept requests for old RubyForge URLs and permanently redirect them to their new location. It’s deployed on Heroku at http://rubyforge-redirects.herokuapp.com/, where it’s configured to serve all requests for \*.rubyforge.org hostnames.

You can take advantage of it right now by adding entries to your `/etc/hosts` file to point supported \*.rubyforge.org hostnames at whatever IP address rubyforge-redirects.herokuapp.com currently resolves to. (I’d hoped to run something like `dnsmasq` locally to serve a CNAME, but I don’t see an easy way to make that work. [Help!](https://github.com/tomstuart/rubyforge-redirects/issues/1))

## Why?

Right now all \*.rubyforge.org hostnames just go nowhere, which seems a waste. The goal of this app is to accumulate enough redirects that I can convince Ruby Central to point the real rubyforge.org DNS at it, thereby unbreaking all the rubyforge.org links in the wild. (I’d happily transfer ownership of the Heroku app and GitHub repo to Ruby Central in that case, or of course they could choose to run/fork their own.)

## Help

The main thing this app needs is *more redirects*. Please contribute redirects by adding examples to [the Cucumber feature](features/redirect.feature), making them pass in [the Rack app](config.ru), and submitting a pull request.

There are also several [feature-related issues](https://github.com/tomstuart/rubyforge-redirects/labels/help%20wanted) which you could help with.

Less importantly, the current implementation uses [Rack::Rewrite](https://github.com/jtrupiano/rack-rewrite) and is extremently rudimentary; please feel free to improve upon it.
