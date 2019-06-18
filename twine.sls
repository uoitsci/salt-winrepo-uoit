twine:
  {% for version in ['2.3.1', '2.3.2'] %}
  {{ version }}:
    full_name: 'Twine {{ version }}'
    installer: https://github.com/klembot/twinejs/releases/download/{{ version }}/twine_{{ version }}_win.exe
    uninstaller: https://github.com/klembot/twinejs/releases/download/{{ version }}/twine_{{ version }}_win.exe
    install_flags: '/S'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
