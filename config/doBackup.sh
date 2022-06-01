#!/bin/bash

if [[ -z "${BACKUP_AGE}" ]]; then
  buAGE=90
else
  buAGE="${BACKUP_AGE}"
fi

