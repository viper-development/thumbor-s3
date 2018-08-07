# thumbor-s3

[![MicroBadger Layers](https://img.shields.io/microbadger/layers/viperdev/thumbor-s3.svg?style=popout)](https://microbadger.com/images/viperdev/thumbor-s3)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/viperdev/thumbor-s3.svg?style=popout)](https://microbadger.com/images/viperdev/thumbor-s3)
[![Docker Pulls](https://img.shields.io/docker/pulls/viperdev/thumbor-s3.svg?style=popout)](https://https://hub.docker.com/r/viperdev/thumbor-s3/)
[![Travis (.org)](https://img.shields.io/travis/viper-development/thumbor-s3.svg)](https://travis-ci.org/viper-development/thumbor-s3)

A docker image for [thumbor](http://thumbor.org) with AWS S3 / Minio
integration which allows resizing images on the fly.

## Configuring thumbor-s3

All the configuration can be done via environment variables. For a list of all
the variables, please check [here](https://github.com/viper-development/thumbor-s3/blob/master/thumbor.conf.tpl).
