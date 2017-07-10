#!/usr/bin/env bash
#
# shinzui/macos ellipsis package

pkg.link() {
  #don't link any files
  echo ""
}

pkg.install() {
  ./configure_settings.sh
  ./install_apps.sh
  ./install_app_store_apps.sh
  ./configure_apps.sh
}

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
