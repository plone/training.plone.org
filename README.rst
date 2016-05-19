training.plone.org
==================

This repository contains `Jekyll <http://jekyllrb.com/>`_ templates, CSS styles and images for the `Plone Training Portal <http://training.plone.org>`_.

The whole site is generated with `Jekyll <http://jekyllrb.com/>`_ as a static site with some dynamic parts. Site search functionality is implemented in JavaScript and the index is pre-generated during the Jekyll build.

There is an *rss.py* script that replaces the blog posts section on the index page in the generated *_site/* from the `Plone Planet <http://planet.plone.org>`_.


Documentation
-------------

Full documentation for can be found in the "docs" folder.


Dependencies
------------

Development
~~~~~~~~~~~

- `Vagrant <https://www.vagrantup.com/>`_
- `vagrant-vbguest <https://github.com/dotless-de/vagrant-vbguest>`_ plugin


Installation
------------

Clone this repository

.. code-block:: shell

	git clone https://github.com/plone/training.plone.org.git

	cd training.plone.org

	make bootstrap


Contribute
----------

- Issue Tracker: `<https://github.com/plone/training.plone.org/issues>`_
- Source Code: `<https://github.com/plone/training.plone.org>`_

Support
-------

If you are having issues, please let us know.


License
-------

The project is licensed under the GPLv2.
