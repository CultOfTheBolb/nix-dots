{
  user,
  system,
  inputs,
  ...
}: {
  programs.firefox = {
    enable = true;

    policies = {
      DefaultDownloadDirectory = "/home/${user}/Downloads/";

      DisableFirefoxStudies = true;
      DisableTelemetry = true;
      DisableSystemAddonUpdate = true;

      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = false;
        Fingerprinting = true;
        EmailTracking = false;
      };
    };

    profiles = {
      ${user} = {
        id = 0;
        isDefault = true;

        bookmarks = {
          force = true;

          settings = [
            {
              name = "monkeytype";
              tags = ["monkeytype"];
              keyword = "type";
              url = "https://monkeytype.com";
            }
          ];
        };

        extensions = {
          packages = with inputs.firefox-addons.packages.${system}; [
            proton-pass
            ublock-origin
            startpage-private-search
          ];
        };

        search = {
          force = true;
        };

        settings = {
          "browser.startup.page" = 3;
          "browser.startup.couldRestoreSession.count" = 2;
          "browser.ctrlTab.sortByRecentlyUsed" = true;
          "browser.ml.chat.enabled" = false;
          "browser.tabs.allow_transparent_browser" = false;

          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "svg.context-properties.content.enabled" = true;

          "widget.transparent-windows" = true;
          "widget.windows.mica" = true;
          "widget.windows.mica.extra" = true;
          "widget.windows.mica.popups" = 2;
          "widget.windows.mica.toplevel-backdrop" = 2;
          "widget.macos.titlebar-blend-mode.behind-window" = true;

          "sidebar.verticalTabs" = true;
          "sidebar.animation.enabled" = false;
          "sidebar.main.tools" = ["history" "bookmarks"];

          "browser.newtabpage.pinned" = [
            {
              title = "NixOS";
              url = "https://nixos.org";
            }
          ];
        };
      };
    };
  };
}
