#!/bin/bash

set -x

timedatectl set-timezone America/Chicago

Rscript /opt/crypto/scripts/cryptodashboard.R

