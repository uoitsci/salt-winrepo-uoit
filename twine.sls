twine:
  {% for version in ['2.3.1', '2.3.2'] %}
  {{ version }}:
    full_name: 'Twine {{ version }}'
    installer: https://github.com/klembot/twinejs/releases/download/{{ version }}/twine_{{ version }}_win.exe
    uninstaller: '%ProgramFiles%\Twine\Uninstall Twine.exe'
    install_flags: '/S /AllUsers'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
  2.9.0:
    full_name: 'Twine 2.9.0'
    installer: https://github.com/klembot/twinejs/releases/download/2.9.0/Twine-2.9.0-Windows.exe
    uninstaller: '%ProgramFiles%\Twine\Uninstall Twine.exe'
    install_flags: '/S /AllUsers'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False


