# blueniri &nbsp; [![bluebuild build badge](https://github.com/pliveyns/blueniri/actions/workflows/build.yml/badge.svg)](https://github.com/pliveyns/blueniri/actions/workflows/build.yml)

This is a custom image of Fedora Atomic with niri Scrolling Window Manager and Dank Material Shell.

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- Rebase to the customized image:
  ```
  sudo bootc switch ghcr.io/pliveyns/blueniri:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```

## Images

- blueniri: fedora 43 + niri + DMS
- blueniri-git: fedora 43 + niri-git + dms-git
- blueniri-nxt: fedora rawhide + niri-git + dms-git

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/pliveyns/blueniri
```
