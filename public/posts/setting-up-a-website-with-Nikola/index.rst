.. title: Setting up a website with Nikola
.. slug: setting-up-a-website-with-Nikola
.. date: 2019-10-25 09:07:00 UTC+02:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text


Traditionally, the initial blog post on a custom made site desribes how to setup and build the site. 
However, there are already a plethora of such descriptions available. 
Therefore, I here rather share my motivation for the why_, the outcome of my research about the how_, followed by some points about practicalities_.


.. TEASER_END

.. _why: 

Why to setup your own website
=============================

Given the large amount of available personalizable profile sites for academics (ResearchGate_, Academica_, ScienceOpen_ but also institutes webpages `like my one here`_) one might ask why to build an own one.

For me, it is about taking back control: 
Control about what is presented on a profile, control about how it is presented, and, not at last, control to what other resources I want to link my content. 

Don’t get me wrong. 
I very much welcomed the final arrival of web 2.0 to the research community. 
The social web for researchers were an important stepping stone for me personally - and I believe also for the broader scientific community - 
for disseminating research results and connecting to other research(ers).
However, I think it is time to move on.  

We scientists gather and handle increasing amount of data, often develop our own analysis software and publish research outcomes on a daily basis. 
I think, we should also take the collecting and presenting of our research efforts in our own hands.

.. _ResearchGate: https://www.researchgate.net

.. _Academica: https://www.academia.edu/
   
.. _ScienceOpen: https://www.scienceopen.com/
   
.. _`like my one here`: https://www.ntnu.edu/employees/konstantin.stadler

.. _how:   

How to build a website
======================

Having decided on building my own website, I had to find a way to do that. 

From the beginning I had a pretty good idea what I wanted to accomplish with the website. 
I wanted a framework for building the website which  

    - is open source
    - is reasonable fast (ergo a static website generator)
    - is well documented
    - works well with Gitlab_ or Github_
    - allows to include `Jupyter notebooks`_
      
There are plenty of open static website generators available (see for example `here <https://www.staticgen.com/>`_).

After some research, the choice come down to either Hugo_ or Nikola_. 
Hugo provides some blazing fast website generation (the actual program is a single executable written in Go). 
In addition, the Hugo community developed tons of beautiful themes (see the `Hugo theme gallery`_), 
including one `theme specifically developed for academics <https://sourcethemes.com/academic/>`_.
The latter almost tipped the scale towards Hugo. What Hugo is lacking, however, is a native support for `Jupyter notebooks`_.

This is in contrast to Nikola_, which allows to write posts in several markdown languages (among others my preferred 
reStructuredText_ format) as well as in `Jupyter notebooks`_. 
Nikola also provides multiple themes and it is quite easy to adopt any bootwatch based theme (see `Custom theme`_ below). 
Thus, I finally decided to give Nikola_ a try.

.. _reStructuredText: http://docutils.sourceforge.net/docs/user/rst/quickref.html
.. _Hugo: https://gohugo.io/
.. _Nikola: https://getnikola.com/
.. _`Hugo theme gallery`: https://themes.gohugo.io/

.. _practicalities:

Setting up Nikola
=================

First, install Nikola. 

It is good practice, to install it in a virtual environment (either virtualenv or conda). 
See the `Nikola getting started guide`_ for further information.

If you want to use an Anaconda environment, `Tejaa Chintaluri has some good tips`_.

After activating the virtual or anaconda environment, install Nikola with

.. code-block:: bash

    pip install --upgrade Nikola
    pip install --upgrade "Nikola[extras]"

After that, follow the `Nikola getting started guide`_ guide to build you first test site.

.. _`Nikola getting started guide`: https://getNikola.com/getting-started.html

.. _`Tejaa Chintaluri has some good tips`:  https://tcluri.github.io/posts/how-this-blog-is-setup/
   

Hosting your website
====================

Gitlab_ and Github_ provide a space for hosting your website.

.. _Gitlab: https://www.gitlab.com/
.. _Github: https://www.github.com/

I did not test with Github, but I think you would need to push the content of the build directory ("output" or "public", depending on your conf.py setting for  OUTPUT_FOLDER) to your remote repository. 
See the `Github pages documentation`_ for further information.

.. _`Github pages documentation`: https://pages.github.com/

Gitlab will build your website for you on a virtual machine in a Docker container. 
To set this up, you need to set the OUTPUT_FOLDER in `conf.py` to "public" and include a `.gitlab.yml` file in your webpage repo.

Below the example `.gitlab.yml` of this website:

.. code-block:: yaml

    image: registry.gitlab.com/paddy-hack/Nikola

    test:
      script:
      - Nikola build
      except:
      - master

    pages:
      script:
        - pip3 install jupyter
        - Nikola build
      artifacts:
        paths:
        - public
      only:
      - master


To get started, Gitlab also provides an `example webpage build with Nikola on Gitlab pages
<https://gitlab.com/pages/Nikola>`_.

Note, that you have to include the line `pip3 install jupyter` in the `.gitlab.yml` file if you want to use Juypter notebooks.

From there on you just need to push the source code of your website to your Gitlab remote repo and it will build automatically.
Depending on the availability of the virtual machines you might have to wait a couple of minutes before the build process starts.
You can track the process in the section CI/CD category (on the sidebar).

For more information check the `Gitlab pages documentation`_.

.. _`Gitlab pages documentation`: https://docs.gitlab.com/ee/user/project/pages/index.html

Further tips and tricks
=======================

Building your website
---------------------

.. code-block:: bash

    nikola build
    nikola serve -b


However, if you work on your site, you might want to immediately see the consequences of your changes.
You can continously build a Nikola site by:

.. code-block:: bash

    nikola auto -b


Custom theme
------------

Nikola already provides some themes (see `Nikola themes`_). 
However, not all of theme are compatible with `Jupyter notebooks`_ and/or look good on mobile devices.

.. _`Nikola themes`: https://themes.getnikola.com/

Generally, the `Mako - Jinja2` seems ok.

You can also easily build your own bootstrap based theme by:

.. code-block:: bash

    nikola bootswatch_theme -n YOUR_CUSTOM_THEME_NAME -s BOOTSWATCH_THEME_NAME -p bootstrap3-jinja

You can find the `free bootswatch themes here. <https://bootswatch.com/>`_


.. _`Jupyter notebooks`: http://jupyter.org/
.. _`Jupyter notebook`: http://jupyter.org/

