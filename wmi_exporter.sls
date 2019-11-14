wmi_exporter:
  {% if grains['cpuarch'] == 'AMD64' %}
    {% set arch = 'amd64' %}
  {% else %}
    {% set arch = '386' %}
  {% endif %}
  {% for version in ['0.4.0', '0.4.1', '0.4.2', '0.4.3', '0.4.4', '0.5.0', '0.6.0', '0.7.0', '0.8.0', '0.8.1', '0.8.2', '0.8.3', '0.9.0'] %}
  {{ version }}:
    full_name: 'WMI Exporter'
    installer: https://github.com/martinlindhe/wmi_exporter/releases/download/v{{ version }}/wmi_exporter-{{ version }}-{{ arch }}.msi
    uninstaller: https://github.com/martinlindhe/wmi_exporter/releases/download/v{{ version }}/wmi_exporter-{{ version }}-{{ arch }}.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
