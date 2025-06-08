The `tuned` folder is `/etc/tuned`

[`dbus-send`](https://dbus.freedesktop.org/doc/dbus-send.1.html), [`scx_loader`](https://github.com/sched-ext/scx/tree/main/rust/scx_loader), [`tuned`](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/8/html/monitoring_and_managing_system_status_and_performance/getting-started-with-tuned_monitoring-and-managing-system-status-and-performance), and `tuned-ppd` are required for these profiles to work.
If your desktop environment does not support power-profiles-daemon or you do not have a 3rd party app to control power profiles, this will do nothing.

### By default, the config exhibits the following behaviour with tuned's power-profiles-daemon:
**Balanced:** the `scx-balanced` profile overlaid on the default `balanced` profile

**Balanced-battery:** the `scx-balanced-battery` profile overlaid on the default `balanced-battery` profile

**Powersave:** the `scx-powersave` profile overlaid on the default `laptop-battery-powersave` profile

**Performance:** the `scx-performance` profile overlaid on the default `latency-performance` profile


### Included profiles:
**scx-balanced:** [scx_lavd](https://github.com/sched-ext/scx/tree/main/scheds/rust/scx_lavd) with the `--autopilot` flag

**scx-balanced-battery:** [scx_lavd](https://github.com/sched-ext/scx/tree/main/scheds/rust/scx_lavd) with the `--autopilot` flag

**scx-performance:** [scx_lavd](https://github.com/sched-ext/scx/tree/main/scheds/rust/scx_lavd) with the `--performance` flag

**scx-powersave:** [scx_lavd](https://github.com/sched-ext/scx/tree/main/scheds/rust/scx_lavd) with the `--powersave` flag

### Customization
Each CPU scheduler and its flags are defined in the `.sh` file in each profile using dbus.

`org.scx.Loader.SwitchSchedulerWithArgs` takes two arguments: a string, and an array. The first string is the scheduler, and the array is an array of strings that make up its arguments.

You can also use `org.scx.Loader.SwitchScheduler` if the scheduler takes no arguments.

#### Examples:
```sh
dbus-send --system --print-reply --dest=org.scx.Loader /org/scx/Loader org.scx.Loader.SwitchSchedulerWithArgs string:scx_bpfland array:string:"-p","-s","5000"
```

```sh
dbus-send --system --print-reply --dest=org.scx.Loader /org/scx/Loader org.scx.Loader.SwitchScheduler string:scx_rusty
```


