
# [<img src=".bluebeluga.png" height="100" width="200" style="border-radius: 50%;" alt="@fancyremarker" />](https://github.com/blue-beluga/docker-mkdocs) bluebeluga/mkdocs

Using [MkDocs](http://www.mkdocs.org/) generate and deploy project documentation to Github.

Create project documentation following the instructions for [MkDocs](http://www.mkdocs.org/). Namely, creating a `docs` folder for Markdown and a `mkdocs.yml` file at the project root.

## Configuration

The only additional configuration required is to add the following to your `mkdocs.yml` file:

```yaml
theme_dir: /documentation/theme
```

You should also set `site_url` to the URL of the base of the deployment for the version dropdown to work correctly.

## Previewing

You can preview your docs with Docker, running from project root:

```bash
docker run --rm -p 8000:8000 -v $PWD:/work bluebeluga/mkdocs mkdocs serve
```

## CircleCI

Add a deployment command to your `circle.yml` to build and publish the docs with every build. Here is an example:

```yaml
deployment:
  master:
    branch: master
    commands:
      - eval $(docker run bluebeluga/mkdocs circleci-cmd)
```
