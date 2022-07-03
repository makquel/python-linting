# Python linting Docker image

## Create a CI pipeline in your private repo
In order to use this container image, add the following stage to yout `.gitlab-ci.yaml` file.

```yaml
linting:
  stage: linting
  image: registry.gitlab.com/konduto/python-linting:latest
  script:
    - isort . --profile black --check-only
    - black --line-length 79 --check .
    - flake8 .
  only:
    - merge_requests
```
