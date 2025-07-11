.. title: Why Are There So Many Country Codes? (And How to Convert Them Easily)
.. slug: why-are-there-so-many-country-codes
.. date: 2025-07-11 18:56:11 UTC+02:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text

Yesterday, I was (somewhat reluctantly) forced to watch a few minutes of the Switzerland vs Finland match (congratulations to Switzerland, by the way!). As I glanced at the screen, I noticed something odd: Switzerland was abbreviated as ``SUI``. That immediately caught my attention, because ``SUI`` is *not* the official ISO 3166-1 alpha-3 code for Switzerland.

Curious? Check it yourself:  
`ISO 3166-1 alpha-3 codes on Wikipedia <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3>`_

It turns out that FIFA, the international football association, uses its own set of country codes. And, just to make things even more interesting, these codes are also different from the ones used by the International Olympic Committee (IOC).

- FIFA country codes: https://en.wikipedia.org/wiki/List_of_FIFA_country_codes
- IOC country codes: https://en.wikipedia.org/wiki/List_of_IOC_country_codes

Why Does This Matter?
---------------------

If you work with international data—whether in sports, research, or business—these inconsistencies can quickly become a headache. Converting between ISO, FIFA, and IOC codes (and others!) is a common but surprisingly tricky problem.

A Solution: The ``country_converter`` Package
---------------------------------------------

To make life easier, I’ve been working on the `country_converter (coco) <https://github.com/IndEcol/country_converter>`_ package. And as of today (version 1.3.1), coco now supports FIFA country codes as well!

With coco, you can easily convert between:

- ISO 3166-1 alpha-3 codes
- FIFA country codes
- IOC country codes
- ...and many more!

Check it out on GitHub:  
https://github.com/IndEcol/country_converter
