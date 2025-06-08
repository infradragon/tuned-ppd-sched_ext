#!/bin/bash

. /usr/lib/tuned/functions

start() {
  dbus-send --system --print-reply --dest=org.scx.Loader /org/scx/Loader org.scx.Loader.SwitchSchedulerWithArgs string:scx_lavd array:string:"--autopilot"
  return "$?"
}

stop() {
  dbus-send --system --print-reply --dest=org.scx.Loader /org/scx/Loader org.scx.Loader.StopScheduler
  return "$?"
}

process $@
