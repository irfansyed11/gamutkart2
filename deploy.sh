# install AWS SDK
pip install --user awscli
export PATH=$PATH:$HOME/.local/bin


jq --version
aws --version


# login AWS ECR
eval $(aws ecr get-login --no-include-email --region us-east-1)

# build the docker image and push to an image repository
docker build -t myapp .
docker tag myapp $IMAGE_REPO_URL:latest
docker push $IMAGE_REPO_URL:latest

