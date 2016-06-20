=========
Trainings
=========

Adding or updating a training.

All trainings [descriptions] are located in *website/content/training*

.. todo:: here picture of tree

Lets say we want to add description for a new training, the training is about deploying `Plone <https://plone.org>`_ with `SaltStack <https://saltstack.com/>`_.

Change into the directory

.. code-block:: bash

        $ cd website/content/taining/deploying

Create a directory for SaltStack

.. code-block:: bash

        $ mkdir saltstack

Create a file called *about.md* and add a short description

.. code-block:: bash

	---
	#label: need-help

	title: Deploying with Saltstack
	subsection: saltstack
	section: training-deploying
	description: Deploy Plone with SaltStack
	---

	# SaltStack

	Here a short description written in markdown about the training ....


 



