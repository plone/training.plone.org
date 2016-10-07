=============
Configuration
=============

The directory structure of a this web site or more precisely, of the source files containing its content and templates—provide most of the configuration information that Hugo needs.
This is because Hugo is designed to recognize certain typical usage patterns (and it expects them, by default).

The main config is in a file called *config.toml*

In this config file, you can include precise directions to Hugo regarding how it should render your site, as well as define its menus, and set various other site-wide parameters.

Example
=======

.. code-block:: ini

    baseurl = "https://training.plone.org/"
    languageCode = "en-us"
    title = "Plone Training - training.plone.org"
    theme = "hugo-universal-theme"

    [params]
        copyright = "Plone and the Plone® logo are registered trademarks of the Plone Foundation."
        logo = "img/logo.png"

    [params.features]
        enable = true
        title = "Plone Trainings"
        subtitle = "Plone training events are a great way to expand your skills. Plus it's a excellent way to meet the community."

    [params.testimonials]
    enable = true
    # All trainers are defined in their own files. You can find the items
    # at 'data/testimonials'.
    title = "Trainer"

.. note::

    The configuration settings in conf.toml are a mix of Hugo base settings and variables of the theme.

For more information on possible hugo base settings, please read the `Hugo docs <https://gohugo.io/overview/configuration/>`_ on configuration.

For more information on theme settings please read "theme settings"
