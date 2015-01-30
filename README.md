Concert Tracker
===============

by <a href="http://moodyco.de" target="_blank">Duane M. Moody</a>.

Concert Tracker will tracker concert venues and bands by showing where bands have played and which band played at a particular venue.

Installation
------------

Install Concert Tracker by first cloning the repository.  
```
$ git clone http://github.com/dmmoody/concert_tracker
```

Install all of the required gems:
```
$ bundle install
```

Database Setup
--------------

Run the following in the command line:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Running the app
---------------

To run the app, ```\cd``` into the root folder for the app and start the webserver:
```
$ ruby app.rb
```

In your web browser, go to http://localhost:4567

Contribute
----------

- Issue Tracker: https://github.com/dmmoody/concert_tracker/issues
- Source Code: https://github.com/dmmoody/concert_tracker

Support
-------

If you are having issues, please let me know at: dmmoody@gmail.com

Bug reports
===========

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help me fixing the possible bug. I also encourage you to help even more by forking and sending me a pull request.

https://github.com/dmmoody/concert_tracker/issues

License
=======

MIT License. Copyright 2014 Duane M. Moody | <a href="http://moodyco.de">MoodyCode</a>
