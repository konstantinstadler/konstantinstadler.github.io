# Source code for the personal website

## Architecture

- Nikola for static site generation.
- Poethepoet for run commands

# Utility functions

In images/proj_banner is a script resize which converts all images to same height 
for the project carousel. It uses ImageMagick and requires the images to be in the same folder.
However, this should not be necessary anymore, as the carousel is now using CSS to handle the images.

These are defined in: plugins/projectpages/templates/mako/projects.tmpl

## Doc links

- handbook: https://paulomarconi.github.io/blog/Nikola-guide/
- project (incl statuscodes): https://plugins.getnikola.com/v7/projectpages/
- plugins: https://plugins.getnikola.com
- slides: https://plugins.getnikola.com/v7/slides/

## To implement

https://paulomarconi.github.io/blog/Nikola-guide/
