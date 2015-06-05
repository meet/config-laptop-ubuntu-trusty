# Becuase Ubuntu is always out of date, 14.04's version of pip doesn't look for
# a global config file (?!). This tells it to ignore user config and just use
# the global config.

export PIP_CONFIG_FILE=/etc/pip.conf

