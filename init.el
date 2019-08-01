;; This file only contains some bootstrapping code to make my actual
;; configuration file (config.org) work.
;; This is mostly inspired by Harry Schwartz (github.com/hrs)

(require 'package)
(setq package-archives
            '(("melpa" . "http://melpa.org/packages/")
              ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Make sure that use-package is loaded to bootstrap everything else.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

;; Load the actual config file
(org-babel-load-file "~/.emacs.d/config.org")
