{ config, pkgs, ... }:
{

  networking.hostName = "HenryNixosLaptop"; # Define your hostname.

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  programs.mosh.enable = true;
  services.openssh.ports = [2222];

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.splix pkgs.hplip ];

}