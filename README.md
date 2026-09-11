# M21 rebuild profile

Target: Samsung Galaxy M21 / SM-M215F.

Build defaults:
- Device: `m21`
- ROM: `oneui`
- KernelSU: enabled
- SELinux: enforcing
- Optional compatibility fragment: `arch/arm64/configs/vendor/m21_compat.config`

The build patch applies the fragment with the kernel `merge_config.sh` flow, then runs `olddefconfig` and prints the resulting module-related symbols from `out/.config`. The GitHub Actions workflow repeats the final check so the log proves which settings actually reached the generated kernel config.

This verification does not make arbitrary `.ko` files compatible. External modules still need a compatible kernel ABI, architecture, symbols, and other kernel/runtime requirements.
