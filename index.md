# The Pytherm project

This is our project of open source computational resources for students of Applied Thermodynamics. Our target audience are students that may not yet know what *Python* is, so we will present brief introductions and point to some tutorial material on that and other tools that we require.

The content you will see here is curated by us members of this research group, and either developed by ourselves or adapted from cited sources. We are always accepting indirect suggestions as well as direct contributions.
We are developing our material in the *Python* programming language, through the *Jupyter notebook* interface. If you are not familiar with these tools, *Python* is a programming language that can work with some useful libraries for numerical methods (*numpy*), symbolic algebra (*sympy*) and graphical plots (*matplotlib*) comparable to Matlab. *Jupyter notebook*, on the other hand, is a browser based interface for developing *Python* codes, with intercalating blocks of descriptive documentation and graphical results for easy exposition of the code and underlying ideas in an educational material. Finally, *GitHub* is the website that provides hosting of open source projects from developers (students, researchers, engineers) from all around the world, including ours.

## Goals

We have divided our goals in three categories

### Accessible interactive lectures

* Development of study material for beginners in applied thermodynamics with programming / scientific computing. These materials are suitable for either undergraduate or graduate level courses.

* We are basing our project on scientific computing tools with focus on accessibility: We are developing lectures using pure python that can run on *python tutor live* on any computer with internet access, and lectures using the scipy stack on jupyter notebooks that can run on a variety of operational systems via the anaconda setup or on cloud computing supported by *myBinder*.

>- **Scipy** - the Open Source Library of Scientific Tools
>
>- **Anaconda** - the leading open data science platform powered by Python, a high performance distribution with access to over 720 packages.
>
>- **myBinder** - With Binder, you can add a badge that opens those notebooks in an executable environment, making your code immediately reproducible by anyone, anywhere. 100% free and open source.

### Models & algorithms laboratory

* We intend to publish well documented and open source implementations of topics of interest in thermodynamics for intermediate level students in thermodynamics and in programming / scientific computing, with complete reference to original journal or textbook publications.

* We will host a virtual laboratory for analysis, development and testing of models and algorithms.

### Software incubator

* We will host a software incubator  to develop research level packages for advanced level graduate students and researchers  to fill gaps in the scientific literature of the open source community.

* This will span independent projects that will most likely be hosted in independent GitHub repositories, nevertheless still being part of the PyTherm project. Or even additions to existing projects.

* Expect usage of performance optimization tools and references to external available packages here rather than reinventions, when applicable.

>**Current topics of interest in our research include:**
>
>* Classical thermodynamics fundamentals
>   * Mass balance, energy balance and the 1st law
>   * Entropy and the 2nd law
>   * Chemical reaction
>   * Combustion engines
>   * PxH diagrams
>   * Pure substance L-V saturation curve
>   * Cycles
>   * Critical points
>* Molecular models  
>   * Volumetric Equations of state
>   * Excess Gibbs energy models
>   * Pure solid and solid solution phases properties models
>* Phase and reaction equilibria algorithms  
>   * Stability analysis
>   * Bubble point and dew point calculations
>   * Flash calculations

# Contents

## Getting Started

Reading our material is straightforward from your browser:

* You can run lecture zero on *python tutor live* from your browser

* You can read our pre-calculated ipynb lectures rendered by GitHub on your browser too

* You can interact with the notebooks from the ipynb lectures using binder on your browser, with cloud computing supported by myBinder

For these three kinds of involvement, just skip to our complete Table of contents and choose specific materials.

While, in order to interact with our ipynb lectures locally, you need to setup anaconda

* setup *Anaconda* to interact with our ipynb lectures locally

We prepared a Getting Started text to help interested folks with minimal background get started with anaconda setup [here](pages/GettingStarted.md).

## Our material

Access the complete Table of Contents in one of the two formats below

**In order to read pre-calculated results rendered by nbviewer on your browser, click [here](http://nbviewer.jupyter.org/github/iurisegtovich/PyTherm-applied-thermodynamics/blob/master/index.ipynb)**

**In order to launch our material in interactive cloud computing mode supported by myBinder, click [here](http://mybinder.org:/repo/iurisegtovich/pytherm-applied-thermodynamics)** (this may take a while depending on the server.)

## Getting Involved

To get involved in our collaborative effort, sign up on GitHub to be able to
  * star (1 click to show us your support)
  * watch (receive notifications of updates via email)
  * fork (have a full featured copy of our project into your account to do as you please)
  * improve or develop (got any ideas? create or solve *issues*)
  * submit (we will evaluate your proposals and merge into our project, become a collaborator)

We prepared a getting involved text with direction to setup *github* and *git tools* and submit stuff [here](pages/GettingInvolved.md).

## External References

We would like to acknowledge some prior work that inspire us

See also a more complete list of works at github.com/iurisegtovich/AwesomeThermodynamics

# Credits

## Collaborators

* Creators
  - Fernando de Azevedo Medeiros
  - Iuri Soter Viana Segtovich

* Contributors
  - Guilherme Carneiro Queiroz da Silva
  - Rafael Pereira do Carmo
  - `your name here`

## License
[Free as in Freedom ](https://www.gnu.org/licenses/quick-guide-gplv3.en.html)

### The tools with which we build our project and their licenses or terms of service

Learn about open source licences [here](https://opensource.org/licenses).

##### [Git](https://git-scm.com/about/free-and-open-source) (GNU GPL 2.0)

The Git project chose to use GPLv2 to guarantee your freedom to share and change free software---to make sure the software is free for all its users.

##### [GitHub](https://help.github.com/articles/github-terms-of-service/)

GitHub Terms of Service

##### [Anaconda](https://docs.continuum.io/anaconda/eula) (BSD license)

All rights reserved under the 3-clause BSD License.

##### [Python](https://www.python.org/about/legal/) (BSD license)

Python, its standard libraries, and Jython, are distributed under the Python License. The intellectual property rights behind Python and Jython are held and managed by the Python Software Foundation.

##### [numpy](http://www.numpy.org/license.html) (BSD license)

NumPy License (BSD Style)

##### [sympy](http://docs.sympy.org/latest/aboutus.html#license) (BSD license)

Unless stated otherwise, all files in the SymPy project, SymPy’s webpage (and wiki), all images and all documentation including this User’s Guide are licensed using the new BSD license.

##### [matplotlib](http://matplotlib.org/users/license.html?highlight=license) (BSD license)

Matplotlib only uses BSD compatible code, and its license is based on the PSF license. See the Open Source Initiative licenses page for details on individual licenses. Non-BSD compatible licenses (e.g., LGPL) are acceptable in matplotlib toolkits.

##### [Jupyter notebook](http://jupyter.org/about.html) (BSD license)

Jupyter uses a shared copyright model that enables all contributors to maintain the copyright on their contributions. All code is licensed under the terms of the revised BSD license.

##### [Ipython](http://ipython.readthedocs.io/en/stable/about/license_and_copyright.html?highlight=license) (BSD license)

Several of the authors of IPython are connected with academic and scientific research, so it is important for us to be able to show the impact of our work in other projects and fields. If IPython contributes to a project that leads to a scientific publication, please acknowledge this fact by citing the project. You can use this [ready-made citation entry](https://ipython.org/citing.html).

##### [nbviewer](http://nbviewer.jupyter.org/faq)

#####[jekyll](https://jekyllrb.com/docs/github-pages/)

#####[myBinder](http://docs.mybinder.org/faq)