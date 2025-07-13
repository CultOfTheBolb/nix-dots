{user, ...}: {
  home.file."/home/${user}/.config/godot/editor_settings-4.4.tres" = {
    enable = true;

    recursive = true;

    text = ''
      [gd_resource type="EditorSettings" load_steps=3 format=3]

      [sub_resource type="InputEventKey" id="InputEventKey_gd5pb"]
      command_or_control_autoremap = true
      alt_pressed = true
      keycode = 75
      unicode = 75

      [sub_resource type="InputEventKey" id="InputEventKey_kafj5"]
      keycode = 4194326

      [resource]
      interface/theme/preset = "Custom"
      interface/theme/base_color = Color(0.184314, 0.207843, 0.286275, 1)
      interface/theme/accent_color = Color(0.478431, 0.635294, 0.968627, 1)
      interface/theme/contrast = 0.3
      text_editor/external/exec_path = "nvim"
      text_editor/external/exec_flags = "--server /tmp/godot.pipe --remote-send \"<esc>:n {file}<CR>:call cursor({line},{col})<CR>\""
      text_editor/external/use_external_editor = true
      editors/3d_gizmos/gizmo_settings/bone_axis_length = 0.1
      export/android/debug_keystore = "/home/${user}/.local/share/godot/keystores/debug.keystore"
      export/android/debug_keystore_pass = "android"
      export/android/java_sdk_path = ""
      export/android/android_sdk_path = "/home/${user}/Android/Sdk"
      export/macos/rcodesign = ""
      export/web/http_port = 8060
      export/web/tls_key = ""
      export/web/tls_certificate = ""
      export/windows/rcedit = ""
      export/windows/osslsigncode = ""
      export/windows/wine = ""
      _editor_settings_advanced_mode = true
      _project_settings_advanced_mode = false
      _export_template_download_directory = ""
      _default_feature_profile = ""
      _script_setup_templates_dictionary = {
      "CharacterBody2D": "0CharacterBody2DBasic Movement"
      }
      _use_favorites_root_selection = false
      dotnet/editor/external_editor = 0
      dotnet/editor/custom_exec_path = ""
      dotnet/editor/custom_exec_path_args = ""
      dotnet/build/verbosity_level = 2
      dotnet/build/problems_layout = 1
      _script_setup_use_script_templates = true
      network/language_server/show_native_symbols_in_editor = true
      shortcuts = [{
      "name": "editor/clear_output",
      "shortcuts": [SubResource("InputEventKey_gd5pb")]
      }, {
      "name": "spatial_editor/viewport_zoom_modifier_1",
      "shortcuts": [SubResource("InputEventKey_kafj5")]
      }, {
      "name": "spatial_editor/viewport_zoom_modifier_2",
      "shortcuts": []
      }]
    '';
  };
}
