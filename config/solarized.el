(add-to-list 'custom-theme-load-path (concat +emacs-lib-dir+ "/solarized-theme"))
;;(load-theme "solarized-dark")
(set-frame-parameter nil 'background-mode 'dark)
(customize-set-variable 'frame-background-mode 'dark)
(load-theme 'darcula t)
