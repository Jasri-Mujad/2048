# 2048 Game Docker Deployment

A Dockerized version of the popular 2048 game, served with Nginx on Ubuntu 22.04.

## Overview

This project containerizes the [Gabriele Cirulli's 2048 game](https://github.com/gabrielecirulli/2048) using Docker, making it easy to deploy anywhere Docker is supported, including AWS Elastic Beanstalk.

## Features

- Lightweight container based on Ubuntu 22.04
- Pre-configured Nginx web server
- Automatic download and setup of the 2048 game
- Ready for cloud deployment (AWS Elastic Beanstalk compatible)

## Prerequisites

- Docker installed on your system
- (Optional) AWS account for Elastic Beanstalk deployment

## Quick Start

### Local Deployment

1. Build the Docker image:
   ```bash
   docker build -t 2048-game .
