# Syncthing on TrueNAS SCALE

## Current working install

- Syncthing app from Truecharts
- Dataset `tank/data` mapped to `/userdata` in the pod
- Sub datasets need ACL (e.g. `petr` dataset)
  - *u:apps:rwx* seems to do the job - `sudo setfacl -m u:apps:rwx petr/`
