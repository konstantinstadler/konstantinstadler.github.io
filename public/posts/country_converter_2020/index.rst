.. title: Country Converter update 0.7.1
.. slug: country_converter_2020
.. date: 2020-10-17 11:12:00 UTC+02:00
.. tags: python
.. category: 
.. link: 
.. description: 
.. type: text


A new major release for the `country converter coco 
<https://github.com/konstantinstadler/country_converter>`_.

.. TEASER_END


Why we need a conversion tool
===============================

To date, there is no single standard of how to name or specify individual countries in a (meta) data description.
While some data sources follow ISO 3166, this standard defines a two and a three letter code in addition to a numerical classification.
To further complicate the matter, instead of using one of the existing standards, many databases use unstandardised country names to classify countries.

New classifications
====================

For the new release I extended the list of classifications by the ones used by 
the Integrated Assessment Models IMAGE_ and REMIND_ .
Thus currently the following classifications are available

#) ISO2 (ISO 3166-1 alpha-2)
#) ISO3 (ISO 3166-1 alpha-3)
#) ISO - numeric (ISO 3166-1 numeric)
#) UN numeric code (M.49 - follows to a large extend ISO-numeric)
#) A standard or short name
#) The "official" name
#) Continent
#) UN region
#) EXIOBASE_ 1 classification
#) EXIOBASE_ 2 classification
#) EXIOBASE_ 3 classification
#) WIOD_ classification
#) Eora_
#) OECD_ membership (per year)
#) MESSAGE_ 11-region classification
#) IMAGE_
#) REMIND_
#) UN_ membership (per year)
#) EU_ membership (including EU12, EU15, EU25, EU27, EU27_2007, EU28)
#) EEA_ membership
#) Schengen_ region
#) Cecilia_ 2050 classification
#) APEC_
#) BRIC_
#) BASIC_
#) CIS_ (as by 2019, excl. Turkmenistan)
#) G7_
#) G20_ (listing all EU member states as individual members)


Brexit
=======

Brexit complicates the handling of the EU membership data. Previously, it was 
enough to just save the data when the membership started, while now there is a 
start and exit data. For now, this is solved by adding multiple EU 
classifications corresponding to various extensions (and now contraction 
cycles). This follows the nomenclature described in the `Eurostat glossary`_,


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

Availability
============

The country converter is now also available from the `conda forge 
<https://conda-forge.org/>`_ and can be installed using conda with (if you don't 
have the conda_forge channel added to your conda config add "-c conda-forge", 
see `the install instructions here <https://github.com/conda-forge/country_converter-feedstock>`_):

.. code-block:: bash
    
   conda install country_converter

.. _Anaconda: https://anaconda.org/konstantinstadler/country_converter

Of course, it is also still on PyPI. From the command line:


.. code-block:: bash

    pip install country_converter --upgrade

Thats all folks, happy converting!
