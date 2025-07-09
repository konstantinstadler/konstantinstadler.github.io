.. title: Country Converter update 0.7.3
.. slug: country_converter_073
.. date: 2021-04-09 14:12:00 UTC+02:00
.. tags: python
.. category: 
.. link: 
.. description: 
.. type: text


Two points learned from compiling a new release of the `country converter coco 
<https://github.com/konstantinstadler/country_converter>`_.

.. TEASER_END

First and as always, the new developments for the country converter can be found in the `CHANGELOG file  
<https://github.com/konstantinstadler/country_converter/blob/master/CHANGELOG.rst>`_.

Just to highlight to vaguely related things:

Using pytest for testing administrative package content
=======================================================

I tend to forget to update the version in the *version.py* 
file and the one in the *CHANGELOG.rst* . Most of the time these are not aligned 
which occasionally leads to some headache for the release on the pypi test 
server.

So I finally decided to add a test case for this stuff.  

By no means something complicated to do once I released that I can use `pytest 
<https://docs.pytest.org/en/stable/>`_ for this task.

So the tests in country converter now include a function which parse the first version number found 
in the *CHANGELOG.rst* file and compares it to the version given in the *version.py* 
file:

.. code-block:: python

    import os
    import re
    import sys

    TESTPATH = os.path.dirname(os.path.abspath(__file__))
    sys.path.append(os.path.join(TESTPATH, ".."))

    import country_converter as coco  # noqa

    CHANGELOG_FILE = os.path.join(TESTPATH, "..", "CHANGELOG.rst")

    def test_version_consistency():
        """Test CHANGELOG.rst latest version consistency with module version"""
        version_match = re.compile(r"\d+\.\d+\.\d+[a-zA-Z0-9_.]*")
        with open(CHANGELOG_FILE, "r") as cf:
            for line in cf:
                pot_match = re.match(version_match, line)
                if pot_match:
                    version_changelog = pot_match.group()
                    break
            else:
                raise ValueError("No version information found in the CHANGELOG file")
        assert (
            coco.__version__ == version_changelog
        ), "Version module - CHANGELOG.rst do not match"


For more details see `the actual test file here.
<https://github.com/konstantinstadler/country_converter/blob/master/tests/test_admin.py>`_ 


Same example script for parsing data for a new classification 
==============================================================

The main obstacle for adding a new classification to the country converter is 
to parse the classification from some given country data file. 
For version 0.7.3 I did that for the `Global Burden of Disease <http://ghdx.healthdata.org/>`_ country codes. 
You can find the `gist of it here.  <https://gist.github.com/konstantinstadler/dc3583a4674a39def0d4611c095eb788>`_
For most cases this should be easily adaptable to other classification 
schemes.

Thats all folks, happy converting!
