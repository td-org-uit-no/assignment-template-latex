## assignment-template-latex

This repository provides a simple LaTeX template for writing your Assignments at UiT (The Arctic University of Norway). 

> [!NOTE]
> This is only a template. You have to adapt the template to your current assignment!

## Usage 

### Build PDFs locally 

Once you have installed [LaTeX](https://www.latex-project.org/), you can use it like this:

```console
# Creates `template.pdf` in working directory.
make
```

Clean temp files: 

```console
# Removes the temp files inside `build/`
make clean
```

## Build and release a PDF automatically

The project uses GitHub Actions to build the LaTeX document and create a release on GitHub automatically. To trigger a build, create a new release. The release will be tagged with the version number, and the PDF will be attached to the release.

## Credits

This template is using the [IEEEtran](https://www.ieee.org/conferences/publishing/templates.html) `cls` file.