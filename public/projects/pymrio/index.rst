.. title: Pymrio
.. slug: pymrio
.. date: 1970-01-01T00:00:00+00:00
.. duration: ongoing
.. description: Multi-Regional Input-Output Analysis in Python. 
.. devstatus: beta
.. link: https://pymrio.readthedocs.io/en/latest/?badge=latest
.. github: https://github.com/konstantinstadler/pymrio
.. bugtracker: https://github.com/konstantinstadler/pymrio/issues
.. download: https://pypi.org/project/pymrio/
.. lead: True
.. role: Maintainer
.. sort: 11


   .. raw:: html

    <script type='text/javascript' 
    src='https://d1bxh8uas1mnw7.cloudfront.net/assets/embed.js'></scri pt>



Pymrio: Multi-Regional Input-Output Analysis in Python.

.. image:: https://badge.fury.io/py/pymrio.svg
    :target: https://badge.fury.io/py/pymrio
.. image:: https://anaconda.org/konstantinstadler/pymrio/badges/version.svg   
     :target: https://anaconda.org/konstantinstadler/pymrio
.. image:: https://travis-ci.org/konstantinstadler/pymrio.svg?branch=master
    :target: https://travis-ci.org/konstantinstadler/pymrio
.. image:: https://coveralls.io/repos/github/konstantinstadler/pymrio/badge.svg?branch=master
    :target: https://coveralls.io/github/konstantinstadler/pymrio
.. image:: https://readthedocs.org/projects/pymrio/badge/?version=latest
    :target: http://pymrio.readthedocs.io/en/latest/?badge=latest
    :alt: Documentation Status
.. image:: https://img.shields.io/badge/License-GPL%20v3-blue.svg
    :target: https://www.gnu.org/licenses/gpl-3.0
.. image:: https://zenodo.org/badge/21688312.svg
    :target: https://zenodo.org/badge/latestdoi/21688312

Pymrio is an open source tool for analysing global environmentally extended multi-regional input-output tables (EE MRIOs).  Pymrio aims to provide a high-level abstraction layer for global EE MRIO databases in order to simplify common EE MRIO data tasks.  Pymrio includes automatic download functions and parsers for available EE MRIO databases like EXIOBASE_, WIOD_ and EORA26_.  It automatically checks parsed EE MRIOs for missing data necessary for calculating standard EE MRIO accounts (such as footprint, territorial, impacts embodied in trade) and calculates all missing tables.  Various data report and visualization methods help to explore the dataset by comparing the different accounts across countries.  

Further functions include:

- analysis methods to identify where certain impacts occur
- modifying region/sector classification
- restructuring extensions
- export to various formats
- visualization routines and 
- automated report generation
 

.. _EXIOBASE: http://www.exiobase.eu/
.. _WIOD: http://www.wiod.org/home
.. _OECD: https://www.oecd.org/sti/ind/inter-country-input-output-tables.htm
.. _EORA26: http://www.worldmrio.com/simplified/

Presentations
-------------

.. include:: ./pres_list/euroscipy2014.rst

