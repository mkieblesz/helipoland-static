# Helipoland

Helipoland.com is a static website generated by [hugo](https://gohugo.io/), hosted on [github](https://github.com/mkieblesz/helipoland/) and served by cdn provider (not selected yet). [Tailwind](https://tailwindcss.com/) is used for html styling and javascript for additional dynamic website functionality.

1. [Setup](#setup)
2. [Development](#development)
    - [Workflow overview](#workflow-overview)
    - [Helpful links](#helpful-links)
    - [Directory structure](#directory-structure)
3. [Todos](#todos)

## Setup

- sing up on [github.com](https://github.com)
- setup ssh key pair with `ssh-keygen` on your local machine and upload public key to your [github account settings](https://github.com/settings/keys)
- clone repository with `git clone git@github.com:mkieblesz/helipoland.git` to your workspace directory on your machine
- run `./scripts/install_hugo.sh; sudo mv hugo /usr/local/bin/` script to download other requirements to your local machine (you will be asked for root password)
- run `./scripts/install_tailwind.sh` script to install tailwindcss (you have to have node 12.x installed on your system)

## Development

### Workflow overview

Development happens accordingly to the following workflow.

1. Change website locally on your machine.
    - open command line in the project's root directory and run `hugo server` (this will run local development server. Website will be available at [http://localhost:1313/](http://localhost:1313/))
    - any changes to the files will re-render opened website served by hugo webserver in the browser automatically
    - to clean workspace from temporarily generated files run `./scripts/clean.sh`
2. Once happy with the changes, commit and push changes to github
    - `git add .` - this will add everything to staged changes
    - `git commit -m "Here is change description"` - this will commit changes to git locally
    - `git push` - this will push local commits to github
    - github deploy action will be triggered automatically after push - it will build hugo and deploy it to cdn
3. New version of the website should be available on [helipoland.com](https://helipoland.com).

![helipoland workflow](./helipoland.com.png)

> to update this image upload `helipoland.com.drawio` file to [http://draw.io/](draw.io) website, make changes, export to xml and png formats and copy them to this project's root directory

### Helpful Links

- [https://gohugo.io/getting-started/](https://gohugo.io/getting-started/)
- [https://tailwindcss.com/](https://tailwindcss.com/). Note that we are not building tailwind, but loading it as external file, therefore you can omit all javascript and configuration options and just focus on templating.
- [git starter guide](https://guides.github.com/introduction/git-handbook/). For more advanced features check [this page](https://guides.github.com/).

### Directory Structure

To see more check hugo's [directory structure](https://gohugo.io/getting-started/directory-structure/) docs.

```
.github/                                Github's action spec
archetypes/                             Archetypes are templates used when creating new content with `hugo new ...`
content/                                Hugo assumes that the same structure that works to organize your source content is used to organize the rendered site
layouts/                                Stores templates in the form of .html files that specify how views of your content will be rendered into a static website
scripts/                                Utility scripts simplifying development setup
static/                                 Stores all the static content: images, CSS, JavaScript, etc.
config.toml                             Hugo site configuration
helipoland.com.drawio                   Workflow chart in xml format generated by http://draw.io/
helipoland.com.png                      Worfklow chart in png format generated by http://draw.io/
README.md                               This readme file
.editorconfig                           Default formatting settings config used by various editors - https://editorconfig.org/
.gitignore                              List of file paths ignored from git repository
```

There are few files and directories generated dynamically which are excluded from version control.

```
public/                                 Generated website by hugo
resources/                              Another folder generated by hugo
node_modules/                           Npm packages generated when installing tailwind
```

## Todos

4. Select content delivery network (CDN) provider and update github action.
