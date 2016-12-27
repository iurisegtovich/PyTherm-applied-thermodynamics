# Menu

[Home](/pages/enUS/Getting_Involved)

# Get going with *GitHub*.

In order to be able to submit your contributions you will need to have an account in *GitHub* and to install *Git*. Here are the key steps to submit modifications:

> **summary of the steps:** (see details below.)
>- sign up on *GitHub*
>- fork our repository to your account
>- install **Git tools**
>- clone your fork into your local device
>- edit the local files of the material using jupyter notebook
>- use Git tools to
>>- *stage* changed files
>>- *commit* modifications with a descriptive message
>>- *push* the modifications to your remote fork
>- create a pull request so we can merge your modified remote fork into our main repository

## sign up on *GitHub*

* The first step to be able to submit any contributions you have made is to sign up for an account on *GitHub*, just access their [official site](https://github.com) and follow the intructions on signing up.

### fork our repository

* Access [our repository](https://github.com/iurisegtovich/PyTherm-applied-thermodynamics) and click the **fork** button, then you will get a copy of our material in your personal profile and you will be able to modify it as you wish.

## install *Git*

* Access their [official site](https://git-scm.com/download/win), download the setup file at `32-bit Git for Windows Setup` or `64-bit Git for Windows Setup`, dependeing on your own operational system.
* Run the installer
	* **accept GNU General Public License** [next]
	* **choose a destination folder**, the default option is fine [next]
	* **select components**, the default option (windows explorer integration, .git* and .sh files association) is fine [next]
	* **create a start menu folder**, or not, whatever is fine [next]
	* **adjusting your path environment**, choose option 1 (use git for bash only - "the safest choice") [next]
	* **configuring the line ending conversions**, choose option 1 ("recommended setting on windows for cross platform projects) [next]
	* **configure the terminal** - use minTTY. its more user-friendly than windows's cmd [next]
	* **configuring extra options** - enable caching and credential manager, as default [install]
	* **launch** choose not to launch *git bash* yet [finish]

## "clone"

* Using Git GUI (graphical user interface mode)
	* create a folder in your device named so you can identify the project, e.g. `C:\Users\_your_windows_user_name_here_\Documents\PyTherm`
	* right click on the folder and select `Git GUI Here` from the context menu
	* choose `clone existing repository`
	* on `source location`, paste your repository URL `https://github.com/_your_github_profile_name_here_/PyTherm`
	* on target directory, paste the directory you created appended with a name for a new folder, so you can be sure that the files inside it will synchronize with the github repositopry. e.g. `C:\Users\_your_windows_user_name_here_\Documents\PyTherm\GITSYNC`
	* now you will window open with some yellow orange and green colors. this window just tracks the files you modified in the folder -- change something in any file inside the folder adn then come back to this window and click rescan
	* identify yourself to Git: click `Edit > Options` and fill in `name` with your real name or nickname and also your `email address` of preference. git will use this information to sign your modifications. this is not an authentication so no password is required at this stage. however it should match your information in GitHub so your profile is automatically linked.

## time for those modifications

just edit the files using jupyter notebook. see [Get going with jupyter notebook](https://github.com/iurisegtovich/PyTherm-applied-thermodynamics/blob/master/Getting_started/Get_going_with_Windows/1_Get_going_with_Jupyter_notebook.md) for that, if you haven't done it already. You can use jupyter notebook both for \*.ipynb files and \*.md files.

> **Note:**  if you downloaded the zip file, extracted and edit the files, then any modification you made there can enter here by pasting/replacing your files with the files just pulled from the repository.

## stage
* click rescan and git will find out whatever you changed in the project.
* click stage to tell git that you want it to consider the files you modified (created, deleted or renamed) over the old ones as a new version of the project.

## commit
* write some commit message, it should state briefly what you changed in the project.
* click commit, then Git will save the modification as a new version of the project and archive the old version inside its `.git` directory

## push

to upload the new version to you online github profile you need to *push*
* click push (remote (origin)) -- this will open a github login window, you have to enter your authntification

## create a pull request
to submit it to our official repository you need to create a pull request
* again in github site, browse to the repository version that is in your profile, click pull request to submit it to us and then we will evaluate the changes and merge them

> **what to do if somebody changes the official repo before you commit your own changes?**

> Want to take a look at the files from the upstream repository?
>- Branch > checkout > tracking Branch (fetch tracking branch)
Now all the files in your folder will match those in th upstream repository, take a look

> Want to take a look at your current version of the files?
>- Branch > checkout > local Branch
Now all the files in your folder will again match your version, take a look.

> lets get your modifications based on the old version of upstream and merge them into the new versions of the upstream.
>- merge > local merge > Tracking branch (this will merge the files version currently checked-out into the tracking branch (upstream))
