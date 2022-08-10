#!/bin/bash
set -ex
set -o pipefail

catchsegv python -m coqui_worker.app
