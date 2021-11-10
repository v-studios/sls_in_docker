build:
	docker build . -t sls:latest

sls_deploy:
	docker run -it -e AWS_PROFILE=${AWS_PROFILE} -v `pwd`:/code -v ${HOME}/.aws/credentials:/root/.aws/credentials sls sls deploy
