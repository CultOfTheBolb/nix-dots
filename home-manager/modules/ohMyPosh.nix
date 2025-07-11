{
  programs.oh-my-posh = {
    enable = true;
    enableZshIntegration = true;

    settings = builtins.fromJSON ''
            {
        "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",

        "palette": {
          "main-bg": "#24283b",
          "terminal-red": "#f7768e",
          "pistachio-green": "#9ece6a",
          "terminal-green": "#73daca",
          "terminal-yellow": "#e0af68",
          "terminal-blue": "#7aa2f7",
          "celeste-blue": "#b4f9f8",
          "light-sky-blue": "#7dcfff",
          "terminal-white": "#c0caf5",
          "white-blue": "#a9b1d6",
          "blue-bell": "#9aa5ce",
          "pastal-grey": "#cfc9c2",
          "terminal-magenta": "#bb9af7",
          "blue-black": "#565f89",
          "terminal-black": "#414868",
          "t-background": "p:main-bg"
        },

        "blocks": [
          {
            "alignment": "right",
            "segments": [
              {
                "background": "p:main-bg",
                "foreground": "p:terminal-red",
                "leading_diamond": "\ue0b6",
                "style": "diamond",
                "template": "{{ .UserName }}",
                "trailing_diamond": "\ue0b4 ",
                "type": "session"
              },
              {
                "background": "p:main-bg",
                "foreground": "p:terminal-green",
                "leading_diamond": "\ue0b6",
                "properties": {
                  "style": "folder"
                },
                "style": "diamond",
                "template": "\ue5ff {{ .Path }}",
                "trailing_diamond": "\ue0b4",
                "type": "path"
              },
              {
                "background": "p:main-bg",
                "foreground": "p:terminal-blue",
                "leading_diamond": " \ue0b6",
                "properties": {
                  "branch_icon": ""
                },
                "style": "diamond",
                "template": "{{ .HEAD }}",
                "trailing_diamond": "\ue0b4",
                "type": "git"
              },
              {
                "background": "p:main-bg",
                "foreground": "p:pistachio-green",
                "leading_diamond": " \ue0b6",
                "properties": {
                  "fetch_version": false
                },
                "style": "diamond",
                "template": "\ue235{{ if .Error }}{{ .Error }}{{ else }}{{ if .Venv }}{{ .Venv }} {{ end }}{{ .Full }}{{ end }}",
                "trailing_diamond": "\ue0b4",
                "type": "python"
              },
              {
                "background": "p:main-bg",
                "foreground": "p:light-sky-blue",
                "leading_diamond": " \ue0b6",
                "properties": {
                  "fetch_version": false
                },
                "style": "diamond",
                "template": "\ue626{{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                "trailing_diamond": "\ue0b4",
                "type": "go"
              },
              {
                "background": "p:main-bg",
                "foreground": "p:terminal-red",
                "leading_diamond": " \ue0b6",
                "properties": {
                  "fetch_version": false
                },
                "style": "diamond",
                "template": "\ue738{{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                "trailing_diamond": "\ue0b4",
                "type": "java"
              }
            ],
            "type": "prompt"
          },
          {
            "alignment": "left",
            "newline": true,
            "segments": [
              {
                "background": "p:main-bg",
                "foreground": "p:terminal-magenta",
                "leading_diamond": "\ue0b6",
                "properties": {
                  "style": "austin",
                  "threshold": 150
                },
                "style": "diamond",
                "template": "{{ .FormattedMs }}",
                "trailing_diamond": "\ue0b4 ",
                "type": "executiontime"
              },
              {
                "background": "p:main-bg",
                "foreground": "p:celeste-blue",
                "leading_diamond": "\ue0b6",
                "style": "diamond",
                "template": "\u276f",
                "trailing_diamond": "\ue0b4",
                "type": "text"
              }
            ],
            "type": "prompt"
          }
        ],

        "transient_prompt": {
          "background": "transparent",
          "foreground": "p:terminal-blue",
          "template": "\u276f"
        },

        "final_space": true,
        "version": 3
      }
    '';
  };
}
