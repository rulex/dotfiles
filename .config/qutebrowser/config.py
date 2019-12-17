# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()


# 2018-09-26 21:56:08
config.bind('gt', 'tab-next')
config.bind('gT', 'tab-prev')
config.bind('<Ctrl-n>', 'tab-next')
config.bind('<Ctrl-p>', 'tab-prev')
config.bind('<Ctrl-h>', 'back')
config.bind('<Ctrl-e>', 'scroll down')
config.bind('<Ctrl-y>', 'scroll up')
# config.bind('ö', ':')

c.tabs.background = True

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Proxy to use. In addition to the listed values, you can use a
# `socks://...` or `http://...` URL.
# Type: Proxy
# Valid values:
#   - system: Use the system wide proxy.
#   - none: Don't use any proxy
c.content.proxy = 'socks://localhost:9901'
