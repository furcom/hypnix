{ pkgs, ... }:
{

  home.file.".config/fastfetch/nixos_logo".source = ./nixos_logo;

  programs.fastfetch = {
    enable = true;
    package = pkgs.fastfetch;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      logo = {
        source = "~/.config/fastfetch/nixos_logo";
        padding = {
          top = 2;
          bottom = 2;
          left = 1;
          right = 0;
        };
      };
      display = {
        separator = "";
        color = {
          separator = "1"; # Bold
        };
        constants = [
          "───────────────────────────"
        ];
        key = {
          type = "both";
          paddingLeft = 2;
        };
      };
      modules = [
        "break"
        {
          key = "User         ";
          keyColor = "yellow";
          type = "title";
          format = "{user-name-colored} {at-symbol-colored} {host-name-colored}";
        }
        {
          # fastfetch -h os-format
          key = "OS           ";
          keyColor = "green";
          type = "os";
          format = "{3}"; 
        }
        {
          # fastfetch -h kernel-format
          key = "Kernel       ";
          keyColor = "green";
          type = "kernel";
          format = "{1} {2}"; 
        }
        {
          # fastfetch -h wm-format
          key = "WM           ";
          keyColor = "green";
          type = "wm";
          format = "{2} {5}"; 
        }
        {
          # fastfetch -h de-format
          key = "DE           ";
          keyColor = "green";
          type = "de";
          format = "{2} {3}"; 
        }
        { 
          # fastfetch -h shell-format
          key = "Shell        ";
          keyColor = "green";
          type = "shell";
          format = "{6} {4}"; 
        }
        {
          # fastfetch -h terminal-format
          key = "Terminal     ";
          keyColor = "green";
          type = "terminal";
          format = "{5} {6}"; 
        }
        {
          # fastfetch -h packages-format
          key = "Packages     ";
          keyColor = "green";
          type = "packages";
          format = "{9} System | {10} User";
        }
        "break"
        {
          # fastfetch -h host-format
          key = "Machine      ";
          keyColor = "blue";
          type = "host";
          format = "{5} {3} {2}";
        }
        {
          key = "Resolution   ";
          keyColor = "blue";
          type = "display";
          format = "{1} ✕ {2} | {3} ㎐";
        }
        {
          key = "Uptime       ";
          keyColor = "blue";
          type = "uptime";
          format = "{1}d {2}h {3}m {4}s";
        }
        "break"
        {
          # fastfetch -h cpu-format
          key = "CPU          ";
          keyColor = "cyan";
          type = "cpu";
          format = "{1}";
        }
        {
          # fastfetch -h gpu-format
          key = "GPU          ";
          keyColor = "cyan";
          type = "gpu";
          format = "{1} {2}";
        }
        {
          key = "Memory       ";
          keyColor = "cyan";
          type = "memory";
          format = "{1} | {2} | {3}";
        }
        {
          key = "Disk         ";
          keyColor = "cyan";
          type = "disk";
          format = "{1} | {2} | {3}";
        }
        "break"
        {
          key = "Color        ";
          keyColor = "yellow";
          type = "colors";
          paddingLeft = "50%";
          symbol = "circle";
          format = "{$1} {colors} {$1}";
        }
        "break"
      ];
    };
  };
}
