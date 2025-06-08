The `tuned` folder is `/etc/tuned`
`dbus-send` and `scx_loader` are required for these profiles to work

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


