============
Contributing
============

Developer Setup
===============

Make sure you have all dependencies !

You can choose to install `Hugo <https://gohugo.io/>`_ locally or you can use our Hugo Docker Build, called `mr.hugo <https://github.com/tiramisusolutions/dockerfiles/tree/master/mr.hugo>`_

System Install
--------------

If you went for a local installation you van run *hugo server* in watch mode

.. code-block:: bash

    hugo server --watch --buildDrafts

If you not modified anything, you should get

.. code-block:: bash

    Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)

Open your browser on http://localhost:1313/ and you will see changes instantly, you can find more information on https://gohugo.io/commands/hugo_server/

Docker
------

If you decided for Docker, you can use the *Makefile* located in the repository

.. code-block:: bash

    make server

Tests
=====

We use Docker, `Coala <http://coala.io/>`_ and Sphinx for testing documentation, this will extended in the future to test also the content.
Currently we use a local Git pre-commit hook, in the future this will be done by CI.

.. code-block:: bash

    #!/bin/sh

    set -e

    # Sphinx nit-picky build test
    docker run --rm -v "${PWD}/docs":/build/docs:rw -u "$(id -u)":"$(id -g)" testthedocs/ttd.docsbuilder testbuild

    # Unleash the bears !
    coala-ci DOCS

