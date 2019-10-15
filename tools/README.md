# Community contribution

This book was made possible by community work and contributions. Please, respect your fellow contributors and their time.

If you want to help with the development of this book feel free to make a PR or open an issue (see below). You can also contact maintainers directly.

Active maintainers:

- [Gasperpaul](https://github.com/GasperPaul)

Working languages of this repo are English and Ukrainian.
    
# Opening PRs and issues

If you spot a bug, typo or any other discrepancy in the book, please open an issue with this repo. Somebody will look into it.

If you want to fix it yourself or work on one of the open issues feel free to submit your changes as a pull request. 
When opening a pull request make sure it is done against `master` branch, it has a descriptive name and a description of all your changes.
We suggest using our preferred tools to make any changes for the PR.

# Jupyter Dev environment

This folder contains two scripts (one for Windows and one for Linux and Mac) that will set-up a virtual environment containing Jupyter, Jupyter Lab, Jupyter Book and minimal set of other tools for development (\~200 Mb).
Running this script first time will create the environment in the `.venv` dir in the repo root folder, activate it and install all needed packages into, then run Jupyter for you. 
Running it subsequently will just start Jupyter.

## Building the book

Before committing your book you can compile it by running the following code in the Jupyter Lab console:

```
jupyter-book build ..\.
```

This will recreate the static files associated with the book's content, ensuring you'll see this changes on the site after the merge.

## Commit checklist

Use this checklist before making a PR to ensure you're good to go:
- Check that you've added all changes to the content
- Check any code you touched runs correctly
- If you added new files, check the `_data/toc.yaml` has a reference to it
- Build the book