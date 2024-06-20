scratch:
  {% for version in ['3.3.0'] %}
  {{ version }}:
    full_name: 'Scratch Desktop'
    # https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop%20Setup%203.3.0.exe
    installer: salt://lab/dml/files/Scratch_Desktop_v{{ version }}.msi
    uninstaller: salt://lab/dml/files/Scratch_Desktop_v{{ version }}.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
  3.29.1:
    full_name: 'Scratch 3 3.29.1'
    installer: salt://lab/dml/files/Scratch_3.29.1_Setup.exe
    uninstaller: '%ProgramFiles%\Scratch 3\Uninstall Scratch 3.exe'
    install_flags: '/S /AllUsers'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
