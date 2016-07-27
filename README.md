# Example Docker app with GitLab CI using GitLab Container registry

## CI/CD Pipeline Description

Create/update on merge request
- Build image
- Push to container registry using commit SHA
- Run parallel tests
- Tag image with branch name

Push/merge to master
- Build image (would be great to re-use image if same SHA)
- Run parallel tests (would be great to skip if same SHA)
- Tag image with `latest`
- Deploy to staging

Tag
- Pull image for SHA (would be nice to re-build if needed for some reason)
- Tag image with new tag
- Deploy to production

Manual deploy from non-master branch to staging

Manual deploy from master branch to production

## Note
This requires GitLab Runner using Docker Executor in Privileged mode.

## Access environments

* Production: http://velociraptor.gitlap.com
* Staging: http://velociraptor-staging.gitlap.com/
