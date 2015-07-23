# Docker bower image

A docker image with latest bower installed on top of latest node js. Using official images as long as possible.

This image is meant to be used by gitlab runner for automatic builds.

The "allow root" option and a cach directory activated globally for bower. To persist cache between different images just mount a volume on `/cache`.
