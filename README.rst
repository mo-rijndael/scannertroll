ScrannerTroll
=============

Never gonna let you scan

History
-------

One day I've noticed, there is some error messages in Nginx log.
They said, somebody was trying to access some... *interesting* files like ``/console/index.html`` or ``/api/*``.
There was no dynamic site on my server, so scanners couldn't attack it.
Log messages was annoying, fail2ban was too boring solution, so..

Rickroll 'em all
-----------------

So I wrote simple Nginx config (actually config generator), who redirects frequently scanned locations to Rick Astley's video.

How2install?
------------

First, you have to generate config file. Edit file ``locations.list`` to remove locations, that are used on your server, or add new locations.
Then run ``build.sh``, it'll generate file with name ``scannertroll.conf``.

Second, you need to copy result file in nginx config directory, and use ``include`` directive inside ``server`` directive. Reload configuration.

Congrats! Bots are now whatching Rick Astley instead of scanning your site!
