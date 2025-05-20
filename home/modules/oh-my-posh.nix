{ pkgs, ... }:
{
  programs.oh-my-posh = {
    enable = true;
    enableNushellIntegration = false;
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableZshIntegration = true;
    package = pkgs.oh-my-posh;
    #useTheme = "catppuccin_mocha";
    settings = {
    
      blocks = [
        {
          type = "prompt";
          alignment = "left";
          newline = true;
          segments = [
            {
              type = "path";
              style = "plain";
              background = "transparent";
              foreground = "#FEF0F9";
              template = "<magenta>{{ .UserName  }}</> <white>@</> <green>{{ .HostName }}</> <white>::</> <red>{{ .Path }}</>\n";
              properties = {
                style = "full";
              };
            }
            {
              type = "git";
              style = "plain";
              foreground = "p=grey";
              background = "transparent";
              template = " <#eeee00>{{ .HEAD }}</>{{ if or (.Working.Changed) (.Staging.Changed) }}<#ee0000>  </>{{ end }} <#00eeee>{{ if gt .Behind 0 }}{{ end }}{{ if gt .Ahead 0 }}{{ end }}</>";
              properties = {
                branch_icon = " ";
                commit_icon = " ";
                fetch_status = true;
              };
            }
          ];
        }
        {
          type = "rprompt";
          segments = [
            {
              type = "executiontime";
              style = "plain";
              foreground = "#ffffff";
              background = "transparent";
              template = "<magenta>{{ .FormattedMs }}</>";
              properties = {
                threshold = 5000;
              };
            }
          ];
        }
        {
          type = "prompt";
          alignment = "left";
          newline = true;
          segments = [
            {
              type = "text";
              style = "plain";
              foreground_templates = [
                "{{if gt .Code 0}}white{{end}}"
                "{{if eq .Code 0}}white{{end}}"
              ];
              background = "transparent";
              template = "❯ ";
            }
          ];
        }
      ];
      transient_prompt = {
        foreground_templates = [
          "{{if gt .Code 0}}red{{end}}"
          "{{if eq .Code 0}}red{{end}}"
        ];
        background = "transparent";
        template = "❯ ";
      };
      secondary_prompt = {
        foreground = "#ff000";
        background = "transparent";
        template = "❯❯ ";
      };
      
    };
  };
}
