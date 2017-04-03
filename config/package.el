(package-initialize)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
 '(auto-complete
   tern
   tern-auto-complete
   ace-window
   darcula-theme
   helm
   minimap
   mu4e-maildirs-extension
   project-explorer)
 "List of packages needs to be installed at launch")

(defun has-package-not-installed ()
 (loop for p in packages-list
       when (not (package-installed-p p)) do (return t)
       finally (return nil)))
(when (has-package-not-installed)
 ;; Check for new packages (package versions)
 (message "%s" "Get latest versions of all packages...")
 (package-refresh-contents)
 (message "%s" " done.")
 ;; Install the missing packages
 (dolist (p packages-list)
   (when (not (package-installed-p p))
     (package-install p))))
