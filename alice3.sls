alice3:
  {% if grains['cpuarch'] == 'AMD64' %}
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
  '3.7':
    full_name: 'Alice 3.7'
    installer: https://www.alice.org/wp-content/uploads/2022/08/alice3_windows-x64_installer_3_7_0_0build_876.exe
    uninstaller: https://www.alice.org/wp-content/uploads/2022/08/alice3_windows-x64_installer_3_7_0_0build_876.exe
    install_flags: '-q'
    uninstall_flags: '-q'
    msiexec: False
    locale: en_US
    reboot: False
  '3.9.0.0':
    full_name: 'Alice 3 3.9.0.0'
    installer: https://github.com/TheAliceProject/alice3/releases/download/3.9.0.0/alice3_windows-x64_installer_3_9_0_0.exe
    uninstaller: https://github.com/TheAliceProject/alice3/releases/download/3.9.0.0/alice3_windows-x64_installer_3_9_0_0.exe
    install_flags: '-q'
    uninstall_flags: '-q'
    msiexec: False
    locale: en_US
    reboot: False
