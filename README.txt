=== README

== Usage

gem 'miter'
require 'miter'

Miter::Base.auth(account, apikey)

Miter::Project.find(:all)
Miter::Task.find(:first)
Miter::Customer.find(:all, :params => { ... })
