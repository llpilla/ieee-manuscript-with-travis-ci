# IEEE Manuscript template with Travis CI testing

[![Build Status](https://travis-ci.com/llpilla/ieee-manuscript-with-travis-ci.svg?branch=master)](https://travis-ci.com/llpilla/ieee-manuscript-with-travis-ci)

This repository contains my personal example of an IEEE manuscript template with an integration with Travis CI to check that the PDF file is being generated without errors and the LaTeX files do not contain spelling errors.

The whole idea of this repository template is motivated by previous experiences of working on papers whose authors (including myself) would push changes that would break the paper or that would add spelling errors.

This repository builds over [Strauman's travis-latexbuild](https://github.com/Strauman/travis-latexbuild/). We use his Travis scripts and Docker image, and we add the scripts to run `aspell` over LaTeX files. The IEEE template was adapted from [here](https://www.ieee.org/conferences/publishing/templates.html) in May, 2019.

## How To Use

1. Start by forking this repository. Feel free to make your own private copy for your own texts.
2. Integrate your new repository with Travis CI (such as https://travis-ci.com/).
3. Edit the .tex and .bib files for your purpose and compile your text with `make`.
4. Check the spelling on your text with `aspell-texfiles.sh` or `travis-aspell.sh`. If you find anything wrong in your text, correct it. If the dictionary does not contain any words that are correct, add them to [`.aspell.en.pws`](./.aspell.en.pws).
5. Add any changes or new files to your Git repository.
6. After pushing changes, you can check with your text passes the tests run by Travis CI.

## Current limitations

1. Aspell is configured for English only. To use other languages, you will need other .aspell.lang.pws files, and you will need to change Travis files and the spelling scripts.
2. If you have a large personal dictionary, you may need to copy it to the repository to avoid having a spell check that works locally but not in Travis.

