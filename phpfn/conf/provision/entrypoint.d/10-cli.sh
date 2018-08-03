#!/usr/bin/env bash

isCliTask() {
  for cmd in \
    "bash" \
    "php" \
    "xdebug" \
    "composer"
  do
    if [ -z "${cmd#"$1"}" ]; then
      return 0
    fi
  done

  return 1
}

isCliTask "$TASK" && {
    CLI_SCRIPT="$TASK"
    TASK="cli"
}
