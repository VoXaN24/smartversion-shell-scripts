# smartversion-shell-scripts
Collection of various shell scripts for [SmartVersion](http://smartversion.com).

## Installation

**Note**: SmartVersion currently only supports x86_64 and i386 processors (at least for Linux).

#### Debian-based distributions
```
sudo apt install git unzip
git clone https://github.com/luzeagithub/smartversion-scripts.git
cd smartversion-scripts
sudo ./install-smartversion
```

#### RHEL-based distributions
```
sudo yum install git unzip
git clone https://github.com/luzeagithub/smartversion-scripts.git
cd smartversion-scripts
sudo ./install-smartversion
```

#### Arch-based distributions
```
sudo pacman -S git unzip
git clone https://github.com/luzeagithub/smartversion-scripts.git
cd smartversion-scripts
sudo ./install-smartversion
```

#### SUSE-based distributions
```
sudo zypper install git unzip
git clone https://github.com/luzeagithub/smartversion-scripts.git
cd smartversion-scripts
sudo ./install-smartversion
```

Verify the installation by typing `smv` in the console. If the output is similar to `smv: command not found`, check the console for errors.

## Update SmartVersion
Run the steps from [Install SmartVersion](#Install-SmartVersion) again.

## Uninstall SmartVersion
```
sudo ./uninstall-smartversion
```
Keep in mind that the scripts are only working with the SmartVersion executable being installed.

## Usage
Click one of the following links to learn more about the script's usage:
- [extract](#extract)
- [extract-all](#extract-all)
- [install-smartversion](#install-smartversion)
- [patch](#patch)
- [patch-all](#patch-all)
- [uninstall-smartversion](#uninstall-smartversion)

### extract
This script extracts the `patch`.
```
usage: ./extract patch

example:
$ ./extract en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428_to_de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.svf
Smartversion 3.8 (c) 2002-2020 G. Vollant - http://www.smartversion.com/ - 64 bits
extracting : de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.iso Done
success: Successfully extracted SmartVersion patch.
```

### extract-all
This script extracts all patches in the current folder.
```
usage: ./extract-all

example:
$ ./extract-all
Smartversion 3.8 (c) 2002-2020 G. Vollant - http://www.smartversion.com/ - 64 bits
extracting : de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.iso Done
success: Successfully extracted 1 SmartVersion patches.
```

### install-smartversion
This script installs the SmartVersion executable to `/usr/bin/smv`.
```
usage: sudo ./install-smartversion

example:
$ sudo ./install-smartversion 
--2020-12-23 13:27:39--  https://www.smartversion.com/smartvs38_linux_x64.zip
Resolving www.smartversion.com (www.smartversion.com)... 144.217.225.1
Connecting to www.smartversion.com (www.smartversion.com)|144.217.225.1|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 893095 (872K) [application/zip]
Saving to: ‘smartvs38_linux_x64.zip’

smartvs38_linux_x64 100%[===================>] 872,16K  1,36MB/s    in 0,6s    

2020-12-23 13:27:40 (1,36 MB/s) - ‘smartvs38_linux_x64.zip’ saved [893095/893095]

Archive:  smartvs38_linux_x64.zip
  inflating: smv                     
success: Successfully installed SmartVersion executable to /usr/bin/smv.
```

### patch
This script creates a patch from `source-file` to `target-file`.
```
usage: ./patch source-file target-file

example:
$ ./patch en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428.iso de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.iso
Smartversion 3.8 (c) 2002-2020 G. Vollant - http://www.smartversion.com/ - 64 bits
Creating SmartVersion file en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428_to_de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.svf with patch from en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428.iso to de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.iso
success: Successfully patched files.
```

### patch-all
This script creates patches from `source-file` to all files in the folder with the same extension excluding the `source-file`.
```
usage: ./patch-all source-file

example:
$ ./patch-all en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428.iso 
Smartversion 3.8 (c) 2002-2020 G. Vollant - http://www.smartversion.com/ - 64 bits
Creating SmartVersion file en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428_to_de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.svf with patch from en_windows_xp_professional_with_service_pack_3_x86_cd_x14-80428.iso to de_windows_xp_professional_with_service_pack_3_x86_cd_x14-80444.iso
success: Successfully patched 1 files.
```

### uninstall-smartversion
This script uninstalls the SmartVersion executable from `/usr/bin/smv`.
```
usage: sudo ./uninstall-smartversion

example:
$ sudo ./uninstall-smartversion
success: Successfully uninstalled SmartVersion executable from /usr/bin/smv.
```

## Contributing
Yes, please. Fork this repository and start working. After you are done with it, submit a pull request and I will review your changes.

## Credits
- Gilles Vollant, [SmartVersion](http://smartversion.com)

## License
This project is licensed under the [MIT License](LICENSE).
