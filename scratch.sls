scratch:
  {% for version in ['3.3.0'] %}
  {{ version }}:
    full_name: 'Scratch {{ version }}'
    # https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop%20Setup%203.3.0.exe
    installer: salt://lab/dml/files/Scratch_Desktop_v{{ version }}.msi
    uninstaller: salt://lab/dml/files/Scratch_Desktop_v{{ version }}.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
