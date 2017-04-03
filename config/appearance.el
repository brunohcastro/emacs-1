(add-lib-path "dircolors")
(require 'dircolors)

(add-lib-path "smooth-scrolling")
(require 'smooth-scrolling)

(menu-bar-mode nil)

(if window-system
    (custom-set-variables
     '(tool-bar-mode nil)
     '(menu-bar-mode nil)
     '(scroll-bar-mode nil)))

;;highlight current line
(global-hl-line-mode 1)

;;(set-face-background 'hl-line "#111")

;;set cursor colour
;;(set-cursor-color "yellow")
