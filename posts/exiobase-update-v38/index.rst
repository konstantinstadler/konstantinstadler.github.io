.. title: EXIOBASE update: v3.8
.. slug: exiobase-update-v38
.. date: 2020-11-20 10:52:50 UTC+01:00
.. tags: EXIOBASE
.. category: 
.. link: 
.. description: Announcing the new EXIOBASE v3.8 update
.. type: text


We just released a new update for the EXIOBASE 3 MRIO time-series of monetary 
tables: v3.8.

It is a full re-estimate of the time-series, but still relies heavily on "now-casting" economic structure (and environmental extensions). 

.. TEASER_END

.. image:: https://zenodo.org/badge/DOI/10.5281/zenodo.4277368.svg
   :target: https://doi.org/10.5281/zenodo.4277368

For the SUT and IOT coefficient data the latest available source data is for 2011.  As such, the data is likely good for global analysis, and country level estimates, but the uncertainty relative to official data at transaction level would be considerably higher.

The time-series extends into the future (2022), but this is based on the now-casting procedure and projections of GDP and aggregate trade of the IMF.

Most of the updates were done by `Richard Wood`_ and this here is a cross-post 
from https://blog.environmentalfootprints.org/exiobase-update-v3-8/ .

Main updates
------------

* Macroeconomic and trade data for recent years 

	- Updated to 2018 macroeconomic data from UN, and GDP & gross import/export projections until 2022 from IMF.
	- Trade data from Comtrade/BACI in HS6 classification (detailed data) updated to 2018

* Energy and energy-related emissions 

	- At detailed level, energy / emissions updated to 2015 IEA energy balances
	- At an aggregate level, all CO2 fossil emissions updated to 2019 based on Edgar Database; all other GHG emissions updated to 2017 based on PRIMAST database. More recent data are now-casts.
	- There is a major update to the historical time-series of non-fuel combustion GHG emissions. Non-fuel combustion GHG emissions are now scaled to match the PRIMAST dataset, with sectoral (IPCC based) emissions by gas availabe.

* Land, material and water-related data 

	- No updates to v3.7, so purely reliant on now-casts post 2011, or 2013 in the case of materials.

* Co-efficients for environmentally-relevant flows 

	- No updates to v3.7

* Balancing algorithms 

	- No updates to v3.7

As of v3.8, the end years are: 2015 energy, 2019 CO2, 2017 all GHG, 2013 material, 2011 most others, land, water. More recent data are purely "now-casts".


Public vs private version
----------------------------

Note, that there is a public (`available on Zenodo <https://doi.org/10.5281/zenodo.4277368>`_) and private EXIOBASE datasets. The private dataset contains more detailed working files - we are not able to make these fully public because they contain licensed data for energy (IEA), land use and material flows (so these are aggregated in the public version). We don't have permission to release these files to users without requisite licences, and use of the data here should be undertaken only in respect to these licenses. Please contact us for access to the private version with providing evidence for the relevant licences. 

Prior Release Info
------------------

* v37 (June 2019)

	- includes all notes relating to 36 below, but also updates to the emission accounts where the emission accounts are updated `as described Wood et al 2020 <https://t.co/miLWSbqIXW?amp=1>`_ 
	- includes simplification of balancing from purchaser price to basic price for the reconciliation step (hence purchaser price data no longer part of balancing). Pricing layers are now available only in the "init" tables of the individual country SUT files.
	- includes a fix regarding data constraint on macro-economic data regarding taxes less subsidies on final demand. Fix regarding gap filling where binary discrepancy between EXIO2 data and EXIO3 trade data occurs

* v36 (September 2018) 

	- includes new energy and emission accounts, energy and emission accounts updated for better consistency with MSUT, and updated to 2015.
	- includes net energy account broken down by type, and explicit identification of losses (new stressor classification).
	- includes more coefficient constraints (implemented in coeffixer, see coef_fixer log file) 
	- switch from QP to CE in objective of trade data reconciliation.

* v35

	- update of the Macro-economic account (based on a problem identified in RoW ME)
	- inclusion of the net energy account
	- major update of land and water extensions
	- major update of coefficient constraints (in CoefFixer)


The data here has different end-dates for the environmental extensions. Anything beyond the end date is an extrapolation.
As of v3.5, the end year is: 2011 energy, 2015 CO2 fuel combustion, 2013 material, 2011 most others, incl methane and N20, land, water
As of v3.6, the end year is: 2015 energy, 2015 CO2 fuel combustion, 2013 material, 2011 most others, incl methane and N20, land, water
As of v3.7, the end year is: 2015 energy, 2016 all GHG, 2013 material, 2011 most others, land, water land extensions to 2015 are available on request soon, but not yet processed.

Constant price data has been estimated, but we are not robust enough to be released yet. 
Price indices for each product in the database are available.


Bulk Download
--------------

To allow the download of specific years we uploaded the data as zip archives per year and mrio type (industry by industry: ixi, and product by product: pxp). If you need all data, we recommend the excellent `zenodo_get python utility <https://github.com/dvolgyes/zenodo_get>`_ for the download.

After installing the tool, you can download the latest version with

.. code-block:: bash

   zenodo_get 10.5281/zenodo.4277368


Previous versions are available by replacing the latest DOI with previous record numbers.

Alternatively, you can contact `Richard Wood`_ or `Konstantin Stadler <www.konstantinstadler.site>`_ for access to the Box data repository.


Concordances
------------

For concordances, please `see our concordance repository. <https://ntnu.box.com/s/ziox4zmkgt3cdsg549brr0qaecskgjsd>`_


Analysis package
----------------

The `python package pymrio <https://github.com/konstantinstadler/pymrio>`_ can be used to directly parse the EXIOBASE 3 zip files and to calculate production and consumption based acounts.


Background
------------

EXIOBASE 3 was developed by the EU fp7 project DESIRE (Development of a System of Indicators for a Resource Efficient Europe, grant no.: 308552), which was the follow up of the fp6/fp7 projects EXIOPOL/CREEA (which developed EXIOBASE1 and 2, respectively). 10 partners across the `EU were involved in the development <https://cordis.europa.eu/project/id/308552>`_.

A special issues at `Journal of Industrial Ecology <https://onlinelibrary.wiley.com/toc/15309290/2018/22/3>`_ collects several method and application articles describing the compilation and use of EXIOBASE 3.

This also includes the `main documentation of the compilation <http://onlinelibrary.wiley.com/doi/10.1111/jiec.12715/full>`_, which This corresponds to version 3.4 of the data for the time series 1995-2011.

For the now-casting description `see the relevant deliverable <http://fp7desire.eu/documents/category/3-public-deliverables?download=24:d5-3-integrated-report-on-ee-io-related-macro-resource-indicator-time-series>`_


EXIOBASE3 workflow and classification is based on EXIOBASE2. 
 
The final EXIOBASE2 database is available on `exiobase.eu <https://www.exiobase.eu>`_, but note that `agricultural emissions are available here <https://ntnu.box.com/s/bt93z4x4bw2tg8sworrl>`_.
 
Final country specific tables of `EXIOBASE2 are available here. <https://ntnu.box.com/s/u9n7fwr6w7y0wguu9ubbw0ppc47r8opc>`_
 
Source country tables of EXIOBASE2 are `also available <https://ntnu.box.com/s/u9n7fwr6w7y0wguu9ubbw0ppc47r8opc>`_.

And please also check our `main EXIOBASE 3 announcement blog post here.  <https://environmentalfootprints.org/blog/exiobase3/>`_


Data quality/adherence
------------------------

In terms of data quality for more recent years please be mindful of:

- 2007 is the base year for the SUTs and the method of interpolation over time involves using data in different classifications and formats to understand structural change over time (i.e. intermediate and final demand flows by product and industry). Only output, trade and macroeconomic constraints (7 sectors) are direct inputs to final balancing in absolute terms. The database is under the NACE1 classification scheme.

- SUT and IOT data are only used to inform structural change

- Whilst the 2007 EXIOBASE2 table is the base, the National Account Main Aggregates is the main constraint. The main goal was temporal consistency, and not disaggregation of official tables in EXIO3. SUTs/IOTs do often not get updated going backwards, whilst National Account Main Aggregates data does. In general, National Account Main Aggregates are often 10-20% off the equivalent data points aggregated from the official SUTs/IOTs from 2007. 


Energy & emission accounts
Energy and Emission accounts are based on the IEA energy balances, but are not always fully consistent with the monetary IO tables (different data sources was used in the disaggregation of the energy accounts). This does lead to some minor discrepancies in relationships between energy flows and monetary flows. Some efforts are ongoing to fix these. 
 
Household use of energy is available in disaggregated form (by EXIOBASE product), but is auxiliary to the main MRIO dataset, as it does not fit that data structure. Similar case for fuel combustion emissions.

 
 

Further Updates and Development
-------------------------------

In terms of financing future work, we of course are reliant on funding. We are updating parts of the dataset based on individual project requirements, and providing some internal funding for co-ordination across these efforts. We are of course welcome to participate in projects that help fund these updates, either central updates or peripheral work that has benefits for both a single end-user, but also that can be rolled into future public data releases.

We are continually updating the data behind EXIOBASE with a rolling release cycle. Hence more feedback that is given, the greater the chance of improvements in future updates!


Announcements
--------------

Stay tuned for announcements `by subscribing to our EXIOBASE email list. <https://groups.google.com/forum/#!forum/exiobase-announcements>`_

.. _`Richard Wood`: https://www.ntnu.edu/employees/richard.wood
