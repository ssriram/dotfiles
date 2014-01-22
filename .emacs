;; UI

(load-theme 'tango-dark t)


;; Editing


;; Modes

(global-linum-mode t)
(line-number-mode t)
(column-number-mode t)

(show-paren-mode t)
(electric-pair-mode t)

(ido-mode t)

;; Other

(setq inhibit-startup-screen t)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq make-backup-files nil)


