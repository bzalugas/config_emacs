;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "bzalugas"
      user-mail-address "bastien.zalugas@hotmail.fr")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-molokai)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(load "~/.doom.d/list.el")
(load "~/.doom.d/string.el")
(load "~/.doom.d/comments.el")
(load "~/.doom.d/header.el")

;; Set default emacs configuration
;; For c
(set-language-environment "UTF-8")
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	  		    64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;; Set the colomn indicator to 80 with '|'
(defun custom-c-mode-hook ()
  (setq display-fill-column-indicator-column 80)
  (setq display-fill-column-indicator-character ?\|)
  (display-fill-column-indicator-mode 1))
(add-hook 'c-mode-hook 'custom-c-mode-hook)

;; For java
(setq-default c-default-style
	      '((java-mode . "doom")))

;; Desactiver confirmation fermeture emacs
(setq-default confirm-kill-emacs nil)

;;(setq display-fill-column-indicator-column 80)
;;(setq display-fill-column-indicator-character "|")
;;(global-display-fill-column-indicator-mode 1)
;;(display-fill-column-indicator-mode 1)