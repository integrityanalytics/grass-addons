# Contributing

## Contributions other than code

There is more than one way of contributing, see full list at
<https://grass.osgeo.org/get-involved/>.
In the rest of this document, we will focus on contributions centered
around the GRASS GIS Addons source code.

## Reporting issues and suggesting features

To report an issue or to suggest features or a change,
[open an issue](https://github.com/OSGeo/grass-addons/issues/new/choose)
on GitHub.

## Changing code and documentation

This guide covers contributing to the latest version of GRASS GIS Addons
source code which is stored in a branch called _grass7_.
It assumes that you have some very basic knowledge of Git and GitHub,
but if you don't just go through some tutorial online or ask on the
GRASS GIS developer mailing list.

### First time setup

* Create an account on GitHub.
* Install Git on your computer.
* Set up Git with your name and email.
* Fork the repository.
* Clone your fork (use SSH or HTTPS URL):

```
git clone git@github.com:your_GH_account/grass-addons.git
```

* Enter the directory

```
cd grass-addons/
```

* Add main GRASS GIS Addons repository as "upstream" (use HTTPS URL):

```
git remote add upstream https://github.com/OSGeo/grass-addons
```

* Your remotes now should be "origin" which is your fork and "upstream" which
  is this main GRASS GIS Addons repository. You can confirm that using:

```
git remote -v
```

* You should see something like:

```
origin	git@github.com:your_GH_account/grass-addons.git (fetch)
origin	git@github.com:your_GH_account/grass-addons.git (push)
upstream	https://github.com/OSGeo/grass-addons.git (fetch)
upstream	https://github.com/OSGeo/grass-addons.git (push)
```

It is important that "origin" points to your fork.

### Update before creating a feature branch

* Make sure your are starting with the branch for the latest version, i.e., _grass7_:

```
git checkout grass7
```

* Download updates from all branches from the _upstream_ remote:

```
git fetch upstream
```

* Update your local branch to match the one in the upstream repository:

```
git rebase upstream/grass7
```

### Update if you have local branches

If `rebase` fails with "error: cannot rebase: You have unstaged changes...",
then move your uncommitted local changes to "stash" using:

```
git stash
```

* Now you can rebase:

```
git rebase upstream/grass7
```

* Apply your local changes on top:

```
git stash apply
```

* Remove the stash record (optional):

```
git stash pop
```

### Creating a new feature branch

Now you have updated your local branch, you can create a feature branch
based on it.

* Create a new feature branch and switch to it:

```
git checkout -b new-feature
```

### Making changes

You can use your favorite tools to change source code or other files
in the local copy of the code. When make changes, please follow
Submitting Guidelines at
<http://trac.osgeo.org/grass/wiki/Submitting>.

### Committing

* Add files to the commit (changed ones or new ones):

```
git add file1
git add file2
```

* Commit the change (first word is the module name):

```
git commit -m "module: added a new feature"
```

### Pushing changes to GitHub

* Push your local feature branch to your fork:

```
git push origin new-feature
```

### Pull request

When you push, GitHub will respond back in the command line to tell
you what URL to use to create a pull request. You can follow that URL
or you can go any time later to your fork on GitHub, display the
branch `new-feature`, and GitHub will show you button to create
a pull request.

### After creating a pull request

GRASS GIS maintainers or users will now review your pull request.
If needed, they will work with you to improve your changes.

Once the changes in the pull request are ready to be accepted,
the maintainers will usually squash all your commits into one commit and merge it
to the _grass7_ branch.

Once the pull request is merged, it is a good time to update your
local _grass7_ branch in order to get there the change you just contributed.

### Further notes

GRASS GIS maintainers use additional workflows besides the one described
above. These are detailed at <https://trac.osgeo.org/grass/wiki/HowToGit>
