minecraftedu:
  {% for version in ['1.19.52.0', '1.20.1305.0'] %}
  {{ version }}:
    full_name: 'Minecraft EDU Launcher'
    installer: 'salt://lab/dml/files/minecraftedu/{{ version }}/MinecraftEducationEdition_x86_{{ version }}.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'salt://lab/dml/files/minecraftedu/{{ version }}/MinecraftEducationEdition_x86_{{ version }}.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
    cache_dir: True # Recursively copy all files from directory (i.e. .cab files)
  {% endfor %}
