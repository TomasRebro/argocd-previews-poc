export PR_ID=$1
export REPO=argocd-previews-poc
export APP_ID=pr-$REPO-$PR_ID
export IMAGE_TAG=latest
export HOSTNAME=$APP_ID.127.0.0.1.nip.io
cat preview.yaml | kyml tmpl -e REPO -e APP_ID -e IMAGE_TAG -e HOSTNAME | tee helm/templates/$APP_ID.yaml
