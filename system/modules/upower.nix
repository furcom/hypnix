{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.upower ];
  services = {
    upower = {
      enable = true;
      timeLow = 1200;
      timeCritical = 300;
      timeAction = 120;
      percentageLow = 20;
      percentageCritical = 5;
      percentageAction = 2;
      usePercentageForPolicy = true;
      noPollBatteries = false;
      ignoreLid = false;
      enableWattsUpPro = false;
      criticalPowerAction = "PowerOff"; # Options: PowerOff/Hibernate/HybridSleep
    };
  };
}
