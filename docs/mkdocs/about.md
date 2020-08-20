# Intro to MkDocs

All information you are reading now is written in [Markdown](https://www.markdownguide.org/) format. 
The markdown files are converted to HTML using Python based tool MkDocs

For full documentation visit [mkdocs.org](https://www.mkdocs.org).

If you have installed MkDocs, here is quick intro:

## Using Installed MkDocs

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

All that is needed for a repository to become MkDocs site is `mkdocs.yml` file in root of the repository.
This files defines navigation and structure of the site.

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Config

An example of `mkdocs.yml` file - this is the file driving this web:

```yaml
{% include 'mkdocs.yml' %}
```

## Running MkDocs with Docker

If you do not have installed MkDocs, you can use prepared Docker image to render your repo:

```bash
docker run --rm -it -p 8000:8000 -v $(pwd):/docs miroadamy/mkdocs-material
```

The source code of the Docker image is in the [GitHub public repo](https://github.com/miroadamy/mkdocs-material)

The public Docker image is [here](https://hub.docker.com/repository/docker/miroadamy/mkdocs-material)

## Manual installation of MkDocs

After creating the Virtual Environment, make sure you have up to date version
of Python 3 and pip

```.env
$ python --version
Python 3.8.2
$ pip --version
pip 20.0.2 from /usr/local/lib/python3.8/site-packages/pip (python 3.8)
```

If not, update it:

```.env
pip install --upgrade pip

# or install for the first time
# wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
```

Install the mkdocs package:

```.env
$ pip install mkdocs
...

$ mkdocs --version
mkdocs, version 1.1.2 from /Users/miro/.pyenv/versions/3.7.3/envs/dev-main/lib/python3.7/site-packages/mkdocs (Python 3.7)

```

### Install plugins

```
pip install mkdocs-material

pip install --no-cache-dir \
    'mkdocs-minify-plugin>=0.2' \
    'mkdocs-git-revision-date-localized-plugin>=0.4' \
    'mkdocs-awesome-pages-plugin>=2.2.1' \
    'mkdocs-macros-plugin'
```

