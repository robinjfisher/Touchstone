## version 0.5.2

* Call application.css in the layout not touchstone.css

## version 0.5.1

* Remove jquery from application.js

## version 0.5.0

* Default configuration to restrict access to Touchstone through http\_basic authentication and set as option

## version 0.4.1

* Don't inject the before\_filter code into application controller as it causes an error when multiple methods are defined

## version 0.4.0

* Add configuration option to set currency in views and update views to use that currency rather than hard code $

## version 0.3.1

* Update changelog

## version 0.3.0

* Add initializer that mounts engine in routes.rb, copies Touchstone initializer to application and updates application controller
* Allow configuration of model name that signups are associated to
* Allow configuration of attributes displayed when showing signups for a campaign

## version 0.2.0

* Made sass-rails and sass-bootstrap dependencies
* Updated layouts to cleaner style
* Added edit and update actions to campaigns controller

## version 0.1.1

* Fix minor naming error in gemspec

## version 0.1.0

* First release