{ inputs, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    plugins = [
      inputs.hy3.packages.x86_64-linux.hy3
    ];

    settings = {
      "plugin:hy3" = {
        # disable gaps when only one window is onscreen
        # 0 - always show gaps
        # 1 - hide gaps with a single window onscreen
        # 2 - 1 but also show the window border
        no_gaps_when_only = "0"; # default: 0
        
        # policy controlling what happens when a node is removed from a group,
        # leaving only a group
        # 0 = remove the nested group
        # 1 = keep the nested group
        # 2 = keep the nested group only if its parent is a tab group
        node_collapse_policy = "2"; # default: 2

        # offset from group split direction when only one window is in a group
        group_inset = "8"; # default: 10

        # if a tab group will automatically be created for the first window spawned in a workspace
        tab_first_window = "false";

        # tab group settings
        tabs = {
          # height of the tab bar
          height = "24"; # default: 22

          # padding between the tab bar and its focused node
          padding = "5"; # default: 6

          # the tab bar should animate in/out from the top instead of below the window
          from_top = "true"; # default: false

          # radius of tab bar corners
          radius = "5"; # default: 6

          # render the window title on the bar
          render_text = "true"; # default: true

          # center the window title
          text_center = "true"; # default: true

          # font to render the window title with
          text_font = "Nerd JetBrains Mono"; # default: Sans

          # height of the window title
          text_height = "8"; # default: 8

          # left padding of the window title
          text_padding = "2"; # default: 3

          # active tab bar segment colors
          col.active = "rgba(7aa2f7ff)"; # default: rgba(50a0e0ff)
          col.border.active = "rgba(7dcfffff)"; # default: rgba(70b0c0ff)
          col.text.active = "rgba(24283bff)"; # default: rgba(000000ff)

          # urgent tab bar segment colors
          col.urgent = "rgba(f7768eff)"; # default: rgba(ff4f4fff)
          col.border.urgent = "rgba(f7768eff)"; # default: rgba(ff8080ff)
          col.text.urgent = "rgba(24283bff)"; # default: rgba(000000ff)

          # inactive tab bar segment colors
          col.inactive = "rgba(24283bff)"; # default: rgba(30303050)
          col.border.inactive = "rgba(414868ff)"; # default: rgba(50505090)
          col.text.inactive = "rgba(7aa2f7ff)"; # default: rgba(ffffffff)

          # if tab backgrounds should be blurred
          # Blur is only visible when the above colors are not opaque.
          blur = "true"; # default: true

          # opacity multiplier for tabs
          # Applies to blur as well as the given colors.
          opacity = "1.0"; # default: 1.0
        };
      };
    };
  };
}

