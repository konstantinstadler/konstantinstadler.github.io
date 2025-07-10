.. title: Country Converter coco
.. slug: coco
.. date: 1970-01-01T00:00:00+00:00
.. duration: Production/Stable
.. description: Multi-Regional Input-Output Analysis in Python. 
.. devstatus: beta
.. github: https://github.com/konstantinstadler/country_converter
.. bugtracker: https://github.com/konstantinstadler/country_converter/issues
.. download: https://pypi.org/project/country_converter
.. lead: True
.. role: Maintainer
.. sort: 9


   .. raw:: html

    <script type='text/javascript' 
    src='https://d1bxh8uas1mnw7.cloudfront.net/assets/embed.js'></script>

The country converter (coco) is a Python package to convert and match country names between different classifications and between different naming versions. Internally it uses regular expressions to match country names. Coco can also be used to build aggregation concordance matrices between different classification schemes.

.. image:: https://badge.fury.io/py/country-converter.svg
    :target: https://badge.fury.io/py/country_converter
.. image:: https://anaconda.org/conda-forge/country_converter/badges/version.svg   
    :target: https://anaconda.org/conda-forge/country_converter
.. image:: http://joss.theoj.org/papers/af694f2e5994b8aacbad119c4005e113/status.svg
    :target: http://joss.theoj.org/papers/af694f2e5994b8aacbad119c4005e113
.. image:: https://zenodo.org/badge/DOI/10.5281/zenodo.838035.svg
   :target: https://doi.org/10.5281/zenodo.838035
.. image:: https://img.shields.io/badge/License-GPL%20v3-blue.svg
    :target: https://www.gnu.org/licenses/gpl-3.0
.. image:: https://travis-ci.org/konstantinstadler/country_converter.svg?branch=master
    :target: https://travis-ci.org/konstantinstadler/country_converter
.. image:: https://coveralls.io/repos/github/konstantinstadler/country_converter/badge.svg?branch=master
    :target: https://coveralls.io/github/konstantinstadler/country_converter?branch=master
.. image:: https://img.shields.io/badge/code%20style-black-000000.svg
    :target: https://github.com/psf/black


The country converter (coco) automates the conversion from different standards and version of country names.
Internally, coco is based on a table specifying the different ISO and UN standards per country together with the official name and a regular expression which aim to match all English versions of a specific country name.
In addition, coco includes classification based on UN-, EU-, OECD-membership, UN regions specifications, continents and various MRIO and IAM databases


.. _unstats: http://unstats.un.org/unsd/methods/m49/m49regin.htm
.. _OECD: http://www.oecd.org/about/membersandpartners/list-oecd-member-countries.htm
.. _UN: http://www.un.org/en/members/
.. _EU: https://ec.europa.eu/eurostat/statistics-explained/index.php/Glossary:EU_enlargements
.. _Schengen: https://en.wikipedia.org/wiki/Schengen_Area
.. _`Eurostat glossary`: https://ec.europa.eu/eurostat/statistics-explained/index.php/Glossary:EU_enlargements
.. _EEA: https://ec.europa.eu/eurostat/statistics-explained/index.php/Glossary:European_Economic_Area_(EEA)
.. _EXIOBASE: http://exiobase.eu/
.. _WIOD: http://www.wiod.org/home
.. _Eora: http://www.worldmrio.com/
.. _MESSAGE: http://www.iiasa.ac.at/web/home/research/researchPrograms/Energy/MESSAGE-model-regions.en.html
.. _Statoids: http://www.statoids.com/w3166his.html
.. _Cecilia: https://cecilia2050.eu/system/files/De%20Koning%20et%20al.%20%282014%29_Scenarios%20for%202050_0.pdf
.. _APEC: https://en.wikipedia.org/wiki/Asia-Pacific_Economic_Cooperation
.. _BRIC: https://en.wikipedia.org/wiki/BRIC 
.. _BASIC: https://en.wikipedia.org/wiki/BASIC_countries
.. _CIS: https://en.wikipedia.org/wiki/Commonwealth_of_Independent_States
.. _G7: https://en.wikipedia.org/wiki/Group_of_Seven
.. _G20: https://en.wikipedia.org/wiki/G20
.. _IMAGE: https://models.pbl.nl/image/index.php/Welcome_to_IMAGE_3.0_Documentation
.. _REMIND: https://www.pik-potsdam.de/en/institute/departments/transformation-pathways/models/remind
.. _`region classification map`: https://models.pbl.nl/image/index.php/Region_classification_map


Publications
-------------

.. include:: ./pub_list/stadler2017_coco.rst

