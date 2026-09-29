Windows PH Time Sync

A simple Windows batch utility that configures a Windows PC to use Philippine Standard Time (PST) and synchronizes the system clock using the Windows Time service.

Features

- Sets the Windows time zone to Philippine Standard Time
- Uses the Windows Time ("W32Time") service
- Starts and configures the time service
- Synchronizes the system clock
- Verifies the configured time zone
- Verifies Windows Time configuration and status
- Displays the current Windows Time source
- Uses a simple Command Prompt interface

Philippine Time

The Philippines uses UTC+8.

Windows identifies the Philippine time zone through:

Singapore Standard Time

This Windows time-zone identifier is used by the script to configure the system for UTC+8.

Requirements

- Windows 10 or Windows 11
- Administrator privileges
- Internet or network access for time synchronization
- Windows Time service

Usage

1. Download "sync-ph-time.bat".
2. Right-click the file.
3. Select Run as administrator.
4. Follow the instructions displayed in Command Prompt.
5. Wait for the synchronization and verification process to complete.

Verification

The script checks:

tzutil /g
w32tm /query /configuration
w32tm /query /status
w32tm /query /source

These commands show the configured time zone, Windows Time configuration, synchronization status, and current time source.

Purpose

This utility is intended to provide a quick and consistent way to configure Windows PCs for Philippine Time and synchronize their system clocks using built-in Windows tools.

Security and Usage Notice

Run the script only on Windows computers that you own or are authorized to administer.

The script uses built-in Windows commands and does not require third-party software.

License

This project is licensed under the MIT License.

See the ""LICENSE"" (LICENSE) file for the complete license text.

Author

Mark C. Pangilinan / CyberNexus PH
