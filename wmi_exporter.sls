wmi_exporter:
  {% if grains['cpuarch'] == 'AMD64' %}
    {% set arch = 'amd64' %}
  {% else %}
    {% set arch = '386' %}
  {% endif %}
  {% for version in ['0.25.1'] %}
  {{ version }}:
    full_name: 'Windows Exporter'
    installer: https://github.com/prometheus-community/windows_exporter/releases/download/v{{ version }}/windows_exporter-{{ version }}-{{ arch }}.msi
    uninstaller: https://github.com/prometheus-community/windows_exporter/releases/download/v{{ version }}/windows_exporter-{{ version }}-{{ arch }}.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
