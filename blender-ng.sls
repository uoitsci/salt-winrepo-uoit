{% set PROGRAM_FILES = "%ProgramFiles%" %}
blender-ng:
  {% if grains['cpuarch'] == 'AMD64' %}
    {% set arch = '64' %}
  {% else %}
    {% set arch = '32' %}
  {% endif %}
  {% for version in ['2.79', '2.79a', '2.79b'] %}
  {{ version }}:
    full_name: 'Blender'
    installer: https://ftp.nluug.nl/pub/graphics/blender/release/Blender{{ version | regex_replace('[a-z]$', '') }}/blender-{{ version }}-windows{{ arch }}.msi
    uninstaller: https://ftp.nluug.nl/pub/graphics/blender/release/Blender{{ version | regex_replace('[a-z]$', '') }}/blender-{{ version }}-windows{{ arch }}.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
