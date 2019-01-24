import * as React from "react";
import * as Oni from "oni-api";

// export const activate = (oni: Oni.Plugin.Api) => {
// }

// export const deactivate = (oni: Oni.Plugin.Api) => {
// }

export const configuration = {
  // activate,
  // deactivate,

  // ONI
  "oni.useDefaultConfig": false,
  "oni.loadInitVim": "~/.config/oni/init.vim",

  // UI
  "ui.colorscheme": "onedark",
  // "colors.background": "#073642",
  // "colors.title.background": "#073642",

  // Eitor
  // "editor.fontFamily": "Hack-Bold",
  "editor.fontFamily": "FiraCode-Medium",
  "editor.fontSize": "12px",
  "editor.renderer": "webgl",

  // Sidebar
  "sidebar.enabled": false,

  // Learning
  "learning.enabled": false,

  // Tabs
  // "tabs.mode": "native",

  // Disable autoPairs
  "autoClosingPairs.enabled": false,

  // Achievements
  "achievements.enabled": false,

  // Prettier
  "oni.plugins.prettier": {
    enabled: true,
    formatOnSave: true,
    settings: {}
  },

  // Experimental
  "experimental.indentLines.enabled": true
};
