quest:
  {% for version in ['5.8.0'] %}
  {{ version }}:
    full_name: 'Quest {{ version }}'
    installer: https://github.com/textadventures/quest/releases/download/{{ version }}/quest{{ version | regex_replace('\.', '') }}.exe
    uninstaller: https://github.com/textadventures/quest/releases/download/{{ version }}/quest{{ version | regex_replace('\.', '') }}.exe
    install_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    uninstall_flags: '/SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
