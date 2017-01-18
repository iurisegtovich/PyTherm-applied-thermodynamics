# About the project

This is our project of open source computational resources for students of Applied Thermodynamics. Our target audience are students that may not yet know what *Python* is, so we will present brief introductions and point to some tutorial material on that and other tools that we require.

The content you will see here is curated by members of [UFRJ>ATOMS](http://atoms.peq.coppe.ufrj.br/en/index.html) research group, and either developed by ourselves or adapted from cited sources. We are always accepting indirect suggestions as well as direct contributions.
We are developing our material in the *Python* programming language, through the *Jupyter notebook* interface. If you are not familiar with these tools, *Python* is a programming language that can work with some useful libraries for numerical methods (*numpy*), symbolic algebra (*sympy*) and graphical plots (*matplotlib*) comparable to Matlab. *Jupyter notebook*, on the other hand, is a browser based interface for developing *Python* codes, with intercalating blocks of descriptive documentation and graphical results for easy exposition of the code and underlying ideas in an educational material. Finally, *GitHub* is the website that provides hosting of open source projects from developers (students, researchers, engineers) from all around the world, including ours.

## Goals

We have divided our goals in three categories

### Accessible interactive lectures

* This is our main goal

* We are developing study material for beginners in applied thermodynamics with programming / scientific computing. These materials are suitable for either undergraduate or graduate level courses.

* We are basing our project on scientific computing tools with focus on accessibility: We are developing lectures using pure python that can run on *python tutor live* on any computer with internet access, and lectures using the *scipy stack* on *jupyter notebooks* that can run on a variety of operational systems via the *anaconda* setup or on cloud computing supported by *myBinder*.

>- **Scipy** - "the Open Source Library of Scientific Tools"
>
>- **jupyter notebooks** - "The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text."
>
>- **Anaconda** - "the leading open data science platform powered by Python, a high performance distribution with access to over 720 packages.""
>
>- **myBinder** - "With Binder, you can opens those notebooks in an executable environment, making your code immediately reproducible by anyone, anywhere. 100% free and open source.""
>
>- **python tutor live** - "Python Tutor, created by Philip Guo, helps people overcome a fundamental barrier to learning programming: understanding what happens as the computer executes each line of a program's source code."

### courseware content

**we are hostoing the following kind of content in this section**

* Interactive lectures on jupyter
* Featured assignments from undergraduate/graduate students,
* Textbook companions
* Supplementary texts

### Models & algorithms laboratory

* this is our second goal

* We intend to publish well documented and open source implementations of topics of interest in thermodynamics for intermediate level students in thermodynamics and in programming / scientific computing, with complete reference to original journal or textbook publications.

* We will host a virtual laboratory for analysis, development and testing of models and algorithms.

* We are hosting additional open source content not quite accessible from our *jupyter notebook* files, as *c* / *fortran* source code, that can be built using GNU compilers, however specific build instructions depend on the user's environment, or *matlab* / *mathematica* / *excel* scripts / notebooks / spreadsheets, etc... that are themselves open source, but require a licensed *matlab* / *mathematica* / *excel* installation to run.

### Software incubator

* This our third goal, this section will feed from the results of our virtual laboratory.

* Provide support for the development of research and engineering level packages to fill gaps in the scientific literature of the open source community.

*  a software incubator  to develop research level packages for advanced level graduate students and researchers  to fill gaps in the scientific literature of the open source community.

* This will span independent projects that will most likely be hosted in independent GitHub repositories, nevertheless still being part of the PyTherm project. Or even additions to existing projects.

* Expect usage of performance optimization tools and references to external available packages here rather than reinventions, when applicable.

## Current topics of interest in our research include:
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


## Development platform

[![development platform]({{ site.baseurl }}/figs/development-platform.PNG)]({{ site.baseurl }}/figs/development-platform.PNG)

* We build our computations on top of the *SciPy* stack -- a Python-based ecosystem of open-source software for mathematics, science, and engineering.

* We build our content in the *jupyter-notebook* format, using the *anaconda* accessible distribution of the SciPy stack,  fow windows, osx and linux.

* We are able to launch our content in web readable format using jupyter's *nbviewer*, GitHub's *gh-pages* and compatible *Jekyll* theme.

* We make our content available to the remote executable environments of *Python Tutor* and *myBinder*.

* We host our whole project on *GitHub*
