import * as React from "react"
import * as Oni from "oni-api"

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
  "editor.fontFamily": "Hack-Bold",
  "editor.fontSize": "12px",

  // Sidebar
  "sidebar.enabled": false,

  // Learning
  "learning.enabled": false,

  // Tabs
  "tabs.mode": "native",

  // Achievements
  "achievements.enabled": false,

  // Prettier
  "oni.plugins.prettier": {
    "formatOnSave": false,
    "enabled": false
  },


  // Experimental
  "experimental.indentLines.enabled": true
}
