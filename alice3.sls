alice3:
  {{% if grains['cpuarch'] == 'AMD64' %}
    {% set arch = '-x64' %}
  {% else %}
    {% set arch = '' %}
  {% endif %}
  3.5.0.0+build229:
    full_name: 'Alice 3 3.5.0.0+build229'
    installer: http://www.alice.org/wp-content/uploads/2019/04/Alice3_windows{{ arch }}_3_5.exe
    uninstaller: http://www.alice.org/wp-content/uploads/2019/04/Alice3_windows{{ arch }}_3_5.exe
    install_flags: '-q'
    uninstall_flags: '-q'
    msiexec: False
    locale: en_US
    reboot: False
